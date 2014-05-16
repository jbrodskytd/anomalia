import maya.cmds as cmds
from anomalia.core import common, controls, joints, geo
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
        
    # import geo
    geoList = geo.importGeo(char)
    for g in geoList:
        cmds.parent( g, rootSys['geoGrp'] )
    
    # Import joints
    joints.importSkel(char)
    
    # Parent joints to root defJnts group
    jnts = cmds.ls(type='joint')
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
    
    # Build limbs
    lf_arm = anom.systems.limb.build( startJoint='lf_shoulder_defJnt', middleJoint='lf_arm_defJnt', endJoint='lf_hand_defJnt', extraJoint='lf_hand_end_defJnt', side='lf', name='arm', twistJointCount=6 )
    cmds.parent( lf_arm['limbSystem_grp'], rootSys['systemsGrp'] )
    
    rt_arm = anom.systems.limb.build( startJoint='rt_shoulder_defJnt', middleJoint='rt_arm_defJnt', endJoint='rt_hand_defJnt', extraJoint='rt_hand_end_defJnt', side='rt', name='arm', twistJointCount=6 )
    cmds.parent( rt_arm['limbSystem_grp'], rootSys['systemsGrp'] )
    
    lf_leg = anom.systems.limb.build( startJoint='lf_leg_defJnt', middleJoint='lf_knee_defJnt', endJoint='lf_foot_defJnt', extraJoint='lf_foot_end_defJnt', side='lf', name='leg', twistJointCount=6, isLeg=True )
    cmds.parent( lf_leg['limbSystem_grp'], rootSys['systemsGrp'] )
    
    rt_leg = anom.systems.limb.build( startJoint='rt_leg_defJnt', middleJoint='rt_knee_defJnt', endJoint='rt_foot_defJnt', extraJoint='rt_foot_end_defJnt', side='rt', name='leg', twistJointCount=6, isLeg=True )
    cmds.parent( rt_leg['limbSystem_grp'], rootSys['systemsGrp'] )
    
    # Build hands
    lf_hand = anom.systems.hand.build( side='lf', root='lf_hand_root_defJnt',
                                       fingerDict={'thumb':'lf_hand_thumb1_defJnt',
                                                   'index':'lf_hand_index1_defJnt',
                                                   'mid':'lf_hand_mid1_defJnt',
                                                   'pinky':'lf_hand_pinky1_defJnt'},
                                      cleanUp=cleanUp )
    cmds.parent (lf_hand['systemGrp'], rootSys['systemsGrp'])
    
    rt_hand = anom.systems.hand.build( side='rt', root='rt_hand_root_defJnt',
                                       fingerDict={'thumb':'rt_hand_thumb1_defJnt',
                                                   'index':'rt_hand_index1_defJnt',
                                                   'mid':'rt_hand_mid1_defJnt',
                                                   'pinky':'rt_hand_pinky1_defJnt'},
                                      cleanUp=cleanUp )
    cmds.parent (rt_hand['systemGrp'], rootSys['systemsGrp'])
    
    # Build feet
    lf_foot = reverseFoot.build( side = 'lf', jntFoot = lf_leg['jointList'][-1], ctrlFoot = lf_leg['end_ctrl'], ikHandleLeg = lf_leg['ikHandle'], mesh = 'cn_body_render_mesh' )
    cmds.parent( lf_foot['grpSystem'], rootSys['systemsGrp'])
    
    rt_foot = reverseFoot.build( side = 'rt', jntFoot = rt_leg['jointList'][-1], ctrlFoot = rt_leg['end_ctrl'], ikHandleLeg = rt_leg['ikHandle'], mesh = 'cn_body_render_mesh' )
    cmds.parent( rt_foot['grpSystem'], rootSys['systemsGrp'])
    