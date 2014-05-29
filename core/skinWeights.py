import json
import os
import maya.cmds as cmds
import maya.mel as mel
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
from anomalia.core import common as common
from anomalia.core.utils import showDialog

def getSkinWeights( char = '', meshes = [] ):
	'''
	saves skinweights of supplied or selected geometries to a file
	the data is store in nested dictionaries in this structure
	{geometry{vertexId{influenceId:weight}...}...}
	'''

	# abort if no char is given
	if char == '':
		return cmds.warning('No character selected. Please supply a character name in function call.')

	# abort if there no mesh supplied or selected
	if meshes == []:
		meshes = cmds.ls(sl=1)
		print( 'No meshes supplied as param, attempting to use selected objects(%s).' % meshes )
		if meshes == []:
			return cmds.warning('No mesh to export weights from. Please select a mesh.')

	#check if output file already exists
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char)

	if os.path.isfile(skinWeightsFile):
		if cmds.confirmDialog( title = 'Warning', message = 'Overwrite existing skin weights data?', button = ['yes', 'no'] ) != 'yes':
			return 'User cancelled'

	allWeights = {}

	for mesh in meshes:
		# find skinCluster
		clusterName = mel.eval('findRelatedSkinCluster '+ mesh)

		# abort if there is no skinCluster
		if clusterName == '':
			cmds.warning('No skinCluster found, ' + mesh + ' is not bound to a skeleton?')
			meshes.remove( mesh )
			break

		#prune to get rid of 0 zero value indices
		normState = cmds.getAttr( '%s.normalizeWeights' % clusterName )
		shapeName = cmds.listRelatives( mesh, shapes = True )[0]
		cmds.setAttr( '%s.normalizeWeights' % clusterName, False )
		cmds.skinPercent( clusterName, shapeName, normalize = False, pruneWeights = 0.001 )
		cmds.setAttr('%s.normalizeWeights' % clusterName, normState )

		# get the MFnSkinCluster for clusterName
		selList = om.MSelectionList()
		selList.add( clusterName )
		clusterNode = om.MObject()
		selList.getDependNode( 0, clusterNode )
		skinFn = oma.MFnSkinCluster( clusterNode )

		# get the MDagPath for all influence
		infDags = om.MDagPathArray()
		skinFn.influenceObjects(infDags)

		# create a dictionary whose key is the MPlug indice id and
		# whose value is the influence list id
		infIds = {}
		infs = []
		for i in xrange( infDags.length() ):
			infPath = infDags[i].fullPathName()
			infId = int(skinFn.indexForInfluenceObject( infDags[i] ) )
			infIds[infId] = i
			infs.append( infPath )

		# get weightList and weight plugs
		weightListPlug = skinFn.findPlug('weightList')
		weightsPlug = skinFn.findPlug('weights')
		weightListAttr = weightListPlug.attribute()
		weightsAttr = weightsPlug.attribute()
		weightsInfIds = om.MIntArray()

		# the weights are stored in dictionary, the key is the vertId,
		# the value is another dictionary whose key is the influence id and
		# value is the weight for that influence
		# first key 'infs' is the list of influences in bind order
		weights = {}	
		weights['infs'] = infs
		for vertId in xrange( weightListPlug.numElements() ):
			vertWeights = {}
			weightsPlug.selectAncestorLogicalIndex( vertId, weightListAttr )

			weightsPlug.getExistingArrayAttributeIndices( weightsInfIds )

			infPlug = om.MPlug( weightsPlug )
			for infId in weightsInfIds:

				infPlug.selectAncestorLogicalIndex( infId, weightsAttr )

				try:
					vertWeights[infIds[infId]] = infPlug.asDouble()
				except KeyError:
					pass

			weights[vertId] = vertWeights
		
		
		allWeights[mesh] = weights

		
	#save data to file
	f = open(skinWeightsFile, 'w')
	f.write(json.dumps(allWeights))
	f.close()
	showDialog( 'Succss!', 'Skin weights for [ %s ] saved to file:\n"%s_skin.py"' % (', '.join(meshes), skinWeightsFile) )
	
	return allWeights


def setSkinWeights( char = '', meshes = [] ):
	'''
	applies skinweights from file to supplied or selected geometries
	(which need to already have a skincluster)
	'''
	
	# abort if no char is given
	if char == '':
		return cmds.warning('No character selected. Please supply a character name in function call.' )

	# abort if there no mesh supplied or selected
	if meshes == []:
		meshes = cmds.ls(sl=1)
		print( 'No meshes supplied as param, attempting to use selected objects(%s).' % ', '.join(meshes) )
		if meshes == []:
			return cmds.warning( 'No mesh to export weights from. Please select a mesh.' )

	# get path to skin file
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char )

	# use default skinWeightsFile if character specific file does not exist
	if not os.path.exists( skinWeightsFile ):
		jointFile = os.path.join( common.getCharDir( 'defaultChar' ), 'defaultChar_joints.py' )
		cmds.warning( 'Did not find skin weights file for selected character, using default character file.' )

	# read skin weights from file
	f = open( skinWeightsFile, 'r' )
	allWeights = json.loads( f.readline() )
	f.close()
	
	# compare meshes to keys of allWeights dictionary
	print( 'File contains skinweights for: ' + ','.join( allWeights.keys() ) )	
	for mesh in meshes:
		if mesh not in allWeights.keys():
			cmds.warning( 'No weights found for %s' % mesh )
			meshes.remove( mesh )

	for mesh in meshes:
				
		# find skinCluster
		clusterName = mel.eval('findRelatedSkinCluster '+ mesh)

		if clusterName == '':
			cmds.warning('No skinclutser found on %s.' % mesh)
			break

		weights = allWeights[mesh]
	
		# unlock influences	
		infs = cmds.skinCluster( clusterName, q = True, weightedInfluence = True )
		for inf in infs:
			cmds.setAttr( '%s.liw' %inf, False )
			
		# prune weights to get rid of weights not stored in skinWeightsFile
		# normalize needs to be turned off for the prune to work
		normState = cmds.getAttr( '%s.normalizeWeights' % clusterName )
		shapeName = cmds.listRelatives( mesh, shapes = True )[0]
		cmds.setAttr( '%s.normalizeWeights' % clusterName, False )
		cmds.skinPercent( clusterName, shapeName, normalize = False, pruneWeights = 100.0 )
		cmds.setAttr('%s.normalizeWeights' % clusterName, normState )
		
		# pop influences key
		if 'infs' in weights: weights.pop('infs')
		
		# set weights in skinCluster.weightsList[].weights[] to infValue
		for vertId, weightData in weights.items():
			weightListAttr = '%s.weightList[%s]' % ( clusterName, vertId )
			for infId, infValue in weightData.items():
				weightsAttr = '.weights[%s]' % infId
				cmds.setAttr( weightListAttr + weightsAttr, infValue )
	
	showDialog( 'Succss!', 'Skin weights applied to [ %s ] from file:\n"%s_skin.py"' % ( ', '.join(meshes), skinWeightsFile) )
	
	return
	
def rebindSkinClusters( char = '', meshes = [] ):
	'''
	delete and recreate skinclusters on supplied or selected meshes
	with influences from skinWeightsFile
	'''

	# abort if no char is given
	if char == '':
		return cmds.warning('No character selected. Please supply a character name in function call.' )

	# abort if there no mesh supplied or selected
	if meshes == []:
		meshes = cmds.ls(sl=1)
		print( 'No meshes supplied as param, attempting to use selected objects(%s).' % ', '.join(meshes) )
		if meshes == []:
			return cmds.warning( 'No mesh to found. Please select a mesh.' )

	# confirm rebind
	if cmds.confirmDialog( title = 'Warning', message = 'Delete and rebind skinclusters for [ %s ]?' % ', '.join(meshes), button = ['yes', 'no'] ) != 'yes':
		return 'User cancelled'

	# get path to skin file
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char )

	# use default skinWeightsFile if character specific file does not exist
	if not os.path.exists( skinWeightsFile ):
		jointFile = os.path.join( common.getCharDir( 'defaultChar' ), 'defaultChar_joints.py' )
		cmds.warning( 'Did not find skin weights file for selected character, using default character file.' )

	# read skin weights from file
	f = open( skinWeightsFile, 'r' )
	allWeights = json.loads( f.readline() )
	f.close()

	# remove meshes for which there is no infs-key or weight dictionary
	for mesh in meshes:
		if mesh not in allWeights.keys():
			cmds.warning( 'No weights dictionary found for %s' % mesh )
			meshes.remove( mesh )
		if 'infs' not in allWeights[mesh].keys():
			cmds.warning( 'No Influences key found for %s' % mesh )
			meshes.remove( mesh )

	skinclusters = []
	for mesh in meshes:
		weights = allWeights[mesh]
		
		# unbind mesh if skincluster exists
		clusterName = mel.eval('findRelatedSkinCluster '+ mesh)
		if clusterName != '':
			cmds.skinCluster( mesh, edit = True, unbind = True )
		
		# rebind
		skincluster = cmds.skinCluster( weights['infs'], mesh, name = 'skincluster_' + str( mesh ), toSelectedBones = True, maximumInfluences = 5, obeyMaxInfluences = False, skinMethod = 0  )[0]
		skinclusters.append( skincluster )
	
	showDialog( 'Succss!', 'Skinclusters rebound on [ %s ] from file:\n"%s_skin.py"' % ( ', '.join(meshes), skinWeightsFile) )
	cmds.select( meshes )
	
	return skinclusters


#getSkinWeights( 'char' )
#setSkinWeights( 'char' )
#rebindSkinClusters( 'char' )