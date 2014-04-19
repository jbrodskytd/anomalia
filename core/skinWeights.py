import json
import os
import maya.cmds as cmds
import maya.mel as mel
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
from anomalia.core import common as common
from anomalia.core.utils import showDialog

def getSkinWeights( char = '', meshName = '' ):
	'''
	'''

	# check function requirements
	# abort if no char is given
	if char == '':
		return cmds.warning('No character selected. Please supply a character name in function call.')

	# abort if there no mesh supplied or selected
	if meshName == '':
		meshName = cmds.ls(sl=1)[0]
		print( 'No mesh supplied as param, attempting to use from selected object(%s).' % meshName )
		if meshName == []:
			return cmds.warning('No mesh to export weights from. Please select a mesh.')

	# find skinCluster
	clusterName = mel.eval('findRelatedSkinCluster '+ meshName)

	# abort if there is no skinCluster
	if clusterName == '':
		return cmds.warning('No skinCluster found, mesh is not bound to a skeleton?')

	#check if output file already exists
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char)

	if os.path.isfile(skinWeightsFile):
		if cmds.confirmDialog( title = 'Warning', message = 'Overwrite existing skin weights data?', button = ['yes', 'no'] ) != 'yes':
			return 'User cancelled'
			
	#prune to get rid of 0 zero value indices
	normState = cmds.getAttr( '%s.normalizeWeights' % clusterName )
	shapeName = cmds.listRelatives( meshName, shapes = True )[0]
	cmds.setAttr( '%s.normalizeWeights' % clusterName, False )
	cmds.skinPercent( clusterName, shapeName, normalize = False, pruneWeights = 0.01 )
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
	weights = {}
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
	
	
	#save data to file
	f = open(skinWeightsFile, 'w')
	f.write(json.dumps(weights))
	f.close()
	showDialog( 'Succss!', 'Skin weights saved to file:\n"%s_skin.py".' % skinWeightsFile)
	
	return weights


def setSkinWeights( char = '', meshName = '' ):

	## check function requirements
	# abort if no char is given
	if char == '':
		return cmds.warning('No character selected. Please supply a character name in function call.')

	# abort if there no mesh supplied or selected
	if meshName == '':
		meshName = cmds.ls(sl=1)[0]
		print( 'No mesh supplied as param, attempting to use from selected object(%s).' % meshName )
		if meshName == []:
			return cmds.warning('No mesh to export weights from. Please select a mesh.')

	# get path to skin file
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char )

	# use default skinWeightsFile if character specific file does not exist
	if not os.path.exists( skinWeightsFile ):
		jointFile = os.path.join( common.getCharDir( 'defaultChar' ), 'defaultChar_joints.py' )
		cmds.warning('Did not find skin weights file for selected character, using default character file.')

	# read skin weights from file
	f = open( skinWeightsFile, 'r' )
	weights = json.loads( f.readline() )
	f.close()

	# find skinCluster 
	clusterName = mel.eval('findRelatedSkinCluster '+ meshName)
	
	# unlock influences	
	infs = cmds.skinCluster( clusterName, q = True, weightedInfluence = True )
	for inf in infs:
		cmds.setAttr( '%s.liw' %inf, False )
		
	# prune weights to get rid of weights not stored in skinWeightsFile
	# normalize needs to be turned off for the prune to work
	normState = cmds.getAttr( '%s.normalizeWeights' % clusterName )
	shapeName = cmds.listRelatives( meshName, shapes = True )[0]
	cmds.setAttr( '%s.normalizeWeights' % clusterName, False )
	cmds.skinPercent( clusterName, shapeName, normalize = False, pruneWeights = 100.0 )
	cmds.setAttr('%s.normalizeWeights' % clusterName, normState )
	
	# set weights in skinCluster.weightsList[].weights[] to infValue
	for vertId, weightData in weights.items():
		weightListAttr = '%s.weightList[%s]' % ( clusterName, vertId )
		for infId, infValue in weightData.items():
			weightsAttr = '.weights[%s]' % infId
			cmds.setAttr( weightListAttr + weightsAttr, infValue )
	
	showDialog( 'Succss!', 'Skin weights applied to %s from file:\n"%s_skin.py".' % ( meshName, skinWeightsFile) )
	
	return

#getSkinWeights( char = 'char2' )
#setSkinWeights( char = 'char2' )