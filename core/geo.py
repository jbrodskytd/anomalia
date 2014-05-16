import maya.cmds as cmds
import os
from anomalia.core import common as common
from anomalia.core.utils import showDialog

def importGeo(char):
    '''
    imports the charName_geo.ma file from the character's directory if one exists.
    If no file exists, asks whether you want to import the default geo.
    
    Returns a list of new nodes added to the scene (rnn flag)
    
    '''
    geoFile = os.path.join(common.getCharDir( char ), '%s_geo.ma' % char)
    if not os.path.exists(geoFile):
        if showDialog( title='WARNING', message='Character %s geometry file not found.\n Would you like to load default geometry?' % char, button=['yes', 'no'] ) != 'yes':
            return 'User cancelled'
        geoFile = os.path.join(common.getCharDir( 'defaultChar' ), 'defaultChar_geo.ma')
        
    importList = cmds.file(geoFile, i=1, dns=1, rnn=1)
    
    meshNodes = [ m for m in importList if m.split('_')[-1] == 'mesh' ]
    
    return meshNodes