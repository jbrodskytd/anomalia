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
	influences = cmds.skinCluster(skinClusterName, q = True, weightedInfluence = True)
	weightListLength = cmds.getAttr(skinClusterName + ".weightList", size = True)

	# vertex centric output dictionary
	skinWeights = {}

	for vertex in range(0, weightListLength):

		# intermediate joint weight on this vertex dictionary
		vertexWeight = {}

		for influence in range( len(influences) ):

			# get weight of current joint on the current vertex
			weight = cmds.getAttr(skinClusterName + '.weightList' + '[' + str(vertex) + ']' + '.weights[' + str(influence) + ']')


			if weight != 0:
				vertexWeight[influence] = weight
				skinWeights[vertex] = vertexWeight

	print( skinWeights )

	# write data to file
	f = open(skinWeightsFile, 'w')
	f.write(json.dumps(skinWeights))
	f.close()
	showDialog( 'Succss!', 'Skin weights saved to file:\n"%s_skin.py".' % skinWeightsFile)


def applyWeights():

	# get path to skin file
	charDir = common.getCharDir( char )
	skinWeightsFile = os.path.join( charDir, '%s_skin.py' % char)
	print("applyapplyapplyapplyapply")