import maya.cmds as cmds
from anomalia.core import common, controls, joints
from anomalia.systems import *

from anomalia.core.utils import showDialog

def build ( char=None, cleanUp=False ):
    '''
    Builds the specified character
    
    '''
    #Build root structure
    rootSys = root.build()
    
    if not char:
        char = 'defaultChar'
    
    # Import joints
    joints.importSkel(char)
    
    # Parent joints to root defJnts group
    jnts = cmds.ls(type='joint')
    topNodes =[]
    for j in jnts:
        p = cmds.listRelatives(j, p=1)
        if not p:
            cmds.parent(j, rootSys['defJntsGrp'])
            
    # Build spine
    spineSys = spine.build( hips='cn_spine_01_defJnt', chest='cn_spine_06_defJnt', head='cn_spine_11_defJnt',numSpineJoints=6, numHeadJoints=6, twistAxis='x', bendAxis='y', cleanUp=cleanUp )
    cmds.parent(spineSys['xformGrp'], rootSys['systemsGrp'])
    spineTarg = cmds.group(empty=True)
    spineTarg = cmds.rename(spineTarg, common.getName(side='cn', rigPart='spine', function='const', nodeType='grp'))
    common.align(spineTarg, spineSys['xformGrp'])
    cmds.parent(spineTarg, rootSys['constGrp'])
    cmds.parentConstraint( spineTarg, spineSys['xformGrp'] )