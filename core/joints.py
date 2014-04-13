import json
import maya.cmds as cmds
import os
from anomalia.core import common as common
from anomalia.core.utils import showDialog

def writeJoints( char, jointList ):
    '''
    function to save joint data out to a json file
    joints are stored in a dictionary called jointDict with one key - 'joints'
    the value of jointDict['joints'] is another dictionary with a key corresponding to the name of each joint
    the value of each joint key is also a dictionary containing all the data for that joint
    
    ''' 
    joints = {}
    xformAttrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'jox', 'joy', 'joz']
      
    # Populate data
    for j in jointList:
        jointData = {}
        for attr in xformAttrs:
            jointData.setdefault( attr, cmds.getAttr('%s.%s' % (j, attr)))
        
        joints.setdefault( j, jointData )
        
    jointDict = {'joints':joints}
    
    charDir  = common.getCharDir( char )
    jointFile = os.path.join( charDir, '%s_joints.py' % char)
    
    # Check to see if file exists
    if os.path.isfile(jointFile):
        if showDialog( title='WARNING', message='Overwrite existing joint data?', button=['yes', 'no'] ) != 'yes':
            return 'User cancelled'

    # Make sure a destination folder exists
    destDir = os.path.dirname( jointFile )
    if not os.path.exists( destDir ):
        if showDialog( title='WARNING', message='Character %s Does not exist.\n Would you like to create it now?' % char, button=['yes', 'no'] ) != 'yes':
            return 'User cancelled'
        else:
            os.makedirs( destDir )

    # Write data to disk
    f = open(jointFile, 'w')
    f.write(json.dumps(jointDict))
    f.close()
    showDialog( 'Success!', 'Joint data dumped to file:\n"%s_joints.py".' % jointFile )
    
def readJoints( char ):
    '''
    reads joint data for the specified character.
    First, attemps to locate charName_joints.py in the character's local directory.
    If this fails, loads in the data from the default character
    
    '''
    jointFile = os.path.join(common.getCharDir( char ), '%s_joints.py' % char)
    if not os.path.exists(jointFile):
        if showDialog( title='WARNING', message='Character %s joint data not found.\n Would you like to load default joint data?' % char, button=['yes', 'no'] ) != 'yes':
            return 'User cancelled'
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
    xformAttrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'jox', 'joy', 'joz']
    
    jointDict = readJoints( char )
    for j in jointDict['joints'].keys():
        for attr in xformAttrs:
            cmds.setAttr( '%s.%s' % (j, attr), jointDict['joints'][j][attr] )
            
def importSkel( char ):
    '''
    imports the charName_skel.ma file from the character's directory if one exists.
    If no file exists, asks whether you want to import the default skel.
    
    '''
    skelFile = os.path.join(common.getCharDir( char ), '%s_skel.ma' % char)
    if not os.path.exists(skelFile):
        if showDialog( title='WARNING', message='Character %s skeleton file not found.\n Would you like to load default skeleton?' % char, button=['yes', 'no'] ) != 'yes':
            return 'User cancelled'
        skelFile = os.path.join(common.getCharDir( 'defaultChar' ), 'defaultChar_skel.ma')
        
    cmds.file(skelFile, i=1, dns=1)
    
def exportSkel( char, jointList ):
    '''
    exports the charName_skel.ma file from the supplied jointlist.
    If file exists, asks whether you want to overwrite.
    
    '''
    skelFile = os.path.join(common.getCharDir( char ), '%s_skel.ma' % char)
    if os.path.exists(skelFile):
        if showDialog( title='WARNING', message='Character %s skeleton file Exists.\n Overwrite File?' % char, button=['yes', 'no'] ) != 'yes':
            return 'User cancelled'
        
    cmds.select(jointList)
    cmds.file(skelFile, es=1, f=1, type='mayaAscii')
