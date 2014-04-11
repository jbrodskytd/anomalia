import json
import maya.cmds as cmds
import os
from anomalia.core import common as common

def writeJoints( char, jointList ):
    '''
    function to save joint data out to a json file
    joints are stored in a dictionary called jointDict with one key - 'joints'
    the value of jointDict['joints'] is another dictionary with a key corresponding to the name of each joint
    the value of each joint key is also a dictionary containing all the data for that joint
    
    ''' 
    joints = {}
      
    for j in jointList:
        jointData = {}
        jointData.setdefault( 'translate', cmds.getAttr('%s.t' % j))
        
        joints.setdefault( j, jointData )
        
    jointDict = {'joints':joints}
    
    charDir = common.getCharDir( char )
    
    f = open('%s/%s_joints.py' % (charDir, char), 'w')
    f.write(json.dumps(jointDict))
    f.close()
    
def readJoints( char ):
    '''
    reads joint data for the specified character.
    First, attemps to locate charName_joints.py in the character's local directory.
    If this fails, loads in the data from the default character
    
    '''
    jointFile = os.path.join(common.getCharDir( char ), '%s_joints.py' % char)
    if not os.path.exists(jointFile):
        jointFile = os.path.join(common.getCharDir( 'defaultChar' ), 'defaultChar_joints.py')
        
    f = open(jointFile, 'r')
    jointDict = json.loads(f.readline())
    f.close()
    
    return jointDict

def buildJoints( char ):
    '''
    builds the deformation joints for the supplied character
    First, attemps to locate charName_joints.py in the character's local directory.
    If this fails, loads in the data from the default character
    
    '''
    jointDict = readJoints( char )
    for j in jointDict['joints'].keys():
        cmds.setAttr( '%s.tx' % j, jointDict['joints'][j]['translate'][0][0] )
        cmds.setAttr( '%s.ty' % j, jointDict['joints'][j]['translate'][0][1] )
        cmds.setAttr( '%s.tz' % j, jointDict['joints'][j]['translate'][0][2] )
    