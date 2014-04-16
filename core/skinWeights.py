import json
import maya.cmds as cmds
import os
from anomalia.core import common as common
from anomalia.core.utils import showDialog

def writeWeights( char, mesh = '' ):
	'''
	function to save vertex weights to a json file
	weights are stored in a dictionary called skinWeights with a key for every vertex
	the value for the key vertex in another dictionary containing a key for every joint that has influence on that vertex,
	the value being the actual weight of that joint on that vertex
	{vertexId: {jointId: [weight, jointName]}}
	'''

	# check function requirements
	# abort if no char is given
	if char == '':
		return cmds.warning('No character selected. Please supply a character name in function call.')

	# abort if there no mesh supplied or selected
	if mesh == '':
		mesh = cmds.ls(sl=1)[0]
		if mesh == []:
			return cmds.warning('No mesh to export weights from. Please select a mesh.')

	# find skinCluster by checking if there is a node of type skinCluster connected to the shape
	skinClusterName = ''
	for each in cmds.listConnections( cmds.listRelatives( mesh, shapes = True )[0] ):
		if cmds.nodeType( each ) == "skinCluster":
			skinClusterName = each

	# abort if there is no skinCluster
	if skinClusterName == '':
		return cmds.warning('No skinCluster found, mesh is not bound to a skeleton?')

	#check if output file already exists
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char)

	if os.path.isfile(skinWeightsFile):
		if cmds.confirmDialog( title = 'Warning', message = 'Overwrite existing skin weights data?', button = ['yes', 'no'] ) != 'yes':
			return 'User cancelled'


	# main function work
	# get names and number of influnces / joints
	influences = cmds.skinCluster( skinClusterName, q = True, weightedInfluence = True )
	weightListLength = cmds.getAttr( skinClusterName + ".weightList", size = True )

	# vertex centric output dictionary
	skinWeightsDict = {}

	for vertex in range(0, weightListLength):

		# intermediate joint weight on this vertex dictionary
		vertexWeights = {}

		for influence in range( len(influences) ):

			# get weight of current joint on the current vertex
			weight = cmds.getAttr( skinClusterName + '.weightList' + '[' + str(vertex) + ']' + '.weights[' + str(influence) + ']' )

			if weight != 0:
				vertexWeights[influence] = { 'jointName' : influences[influence], 'weight' : weight }

		skinWeightsDict[vertex] = vertexWeights

	# write data to file
	f = open(skinWeightsFile, 'w')
	f.write(json.dumps(skinWeightsDict))
	f.close()
	showDialog( 'Succss!', 'Skin weights saved to file:\n"%s_skin.py".' % skinWeightsFile)

	return skinWeightsDict


def applyWeights( char = "char2", skinClusterName = "skinCluster1" ):
	'''
	does not entirely work yet!
	'''

	# get path to skin file
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char )

	#use default skinWeightsFile if character specific file does not exist
	if not os.path.exists( skinWeightsFile ):
		jointFile = os.path.join( common.getCharDir( 'defaultChar' ), 'defaultChar_joints.py' )
		cmds.warning('Did not find skin weights file for selected character, using default character file.')

	#read skin weights from file
	f = open( skinWeightsFile, 'r' )
	skinWeightsDict = json.loads( f.readline() )
	f.close()

	#set weights per vertex per influence object
	for vertexId in skinWeightsDict:

		#get nested vertex weights dictionary
		vertexWeightDict = skinWeightsDict[vertexId]

		for influenceId in vertexWeightDict:
			cmds.setAttr( '.'.join([skinClusterName, 'weightList[' + str(vertexId) + ']', 'weights[' + str(influenceId) + ']']), vertexWeightDict[str(influenceId)]['weight'] )


	showDialog( 'Succss!', 'Skin weights applied to mesh from file:\n"%s_skin.py".' % skinWeightsFile)

	return skinWeightsDict
