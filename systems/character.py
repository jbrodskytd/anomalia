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
    lf_arm = anom.systems.limb.build( startJoint='lf_shoulder_1_defJnt', middleJoint='lf_arm_1_defJnt', endJoint='lf_hand_defJnt', extraJoint='lf_hand_end_defJnt', side='lf', name='arm', twistJointCount=6 )
    cmds.parent( lf_arm['limbSystem_grp'], rootSys['systemsGrp'] )
    
    rt_arm = anom.systems.limb.build( startJoint='rt_shoulder_1_defJnt', middleJoint='rt_arm_1_defJnt', endJoint='rt_hand_defJnt', extraJoint='rt_hand_end_defJnt', side='rt', name='arm', twistJointCount=6 )
    cmds.parent( rt_arm['limbSystem_grp'], rootSys['systemsGrp'] )
    
    lf_leg = anom.systems.limb.build( startJoint='lf_leg_1_defJnt', middleJoint='lf_knee_1_defJnt', endJoint='lf_foot_defJnt', extraJoint='lf_foot_end_defJnt', side='lf', name='leg', twistJointCount=5, isLeg=True )
    cmds.parent( lf_leg['limbSystem_grp'], rootSys['systemsGrp'] )
    
    rt_leg = anom.systems.limb.build( startJoint='rt_leg_1_defJnt', middleJoint='rt_knee_1_defJnt', endJoint='rt_foot_defJnt', extraJoint='rt_foot_end_defJnt', side='rt', name='leg', twistJointCount=5, isLeg=True )
    cmds.parent( rt_leg['limbSystem_grp'], rootSys['systemsGrp'] )
    
    # Build hands
    lf_hand = anom.systems.hand.build( side='lf', root='lf_hand_root_defJnt',
                                       fingerDict={'thumb':'lf_hand_thumb1_defJnt',
                                                   'index':'lf_hand_index1_defJnt',
                                                   'mid':'lf_hand_mid1_defJnt',
                                                   'pinky':'lf_hand_pinky1_defJnt'},
                                      cleanUp=cleanUp )
    cmds.parent (lf_hand['systemGrp'], rootSys['systemsGrp'])
    cmds.parentConstraint( lf_arm['jointList'][2], lf_hand['systemGrp'], mo=1 ) # Sorry - I know it's horrible but time's running out!!
    
    rt_hand = anom.systems.hand.build( side='rt', root='rt_hand_root_defJnt',
                                       fingerDict={'thumb':'rt_hand_thumb1_defJnt',
                                                   'index':'rt_hand_index1_defJnt',
                                                   'mid':'rt_hand_mid1_defJnt',
                                                   'pinky':'rt_hand_pinky1_defJnt'},
                                      cleanUp=cleanUp )
    cmds.parent (rt_hand['systemGrp'], rootSys['systemsGrp'])
    cmds.parentConstraint( rt_arm['jointList'][2], rt_hand['systemGrp'], mo=1 )
    
    # Build feet
    lf_foot = reverseFoot.build( side = 'lf', jntFoot = lf_leg['jointList'][-1],
                                 ctrlFoot = lf_leg['end_ctrl'],
                                 ikHandleLeg = lf_leg['ikHandle'],
                                 mesh = 'cn_body_render_mesh',
                                 stretchLoc = lf_leg['stretch_positions'][1],
                                 cleanUp = True
                                 )
    cmds.parent( lf_foot['systemsGrp'], rootSys['systemsGrp'])
    
    rt_foot = reverseFoot.build( side = 'rt',
                                 jntFoot = rt_leg['jointList'][-1],
                                 ctrlFoot = rt_leg['end_ctrl'],
                                 ikHandleLeg = rt_leg['ikHandle'],
                                 mesh = 'cn_body_render_mesh',
                                 stretchLoc = rt_leg['stretch_positions'][1],
                                 cleanUp = True
                                 )
    cmds.parent( rt_foot['systemsGrp'], rootSys['systemsGrp'])
    
    # Build AutoHips
    autoHip.createAutoHip(lf_leg['start_ctrl'], spineSys['hipCtrl'][0], lf_leg['end_ctrl'])
    autoHip.createAutoHip(rt_leg['start_ctrl'], spineSys['hipCtrl'][0], rt_leg['end_ctrl'])
    
    # Build Rivets
    lf_shoulder_rivet = rivet.build( targ=lf_arm['start_ctrl'], mesh='cn_body_render_mesh', side='lf', rigPart='arm', cleanUp=cleanUp )
    cmds.parent( lf_shoulder_rivet['follicle'], rootSys['constGrp'] )
    cmds.pointConstraint( lf_shoulder_rivet['constGrp'], cmds.listRelatives(lf_arm['start_ctrl'], p=1)[0] )
    
    rt_shoulder_rivet = rivet.build( targ=rt_arm['start_ctrl'], mesh='cn_body_render_mesh', side='rt', rigPart='arm', cleanUp=cleanUp )
    cmds.parent( rt_shoulder_rivet['follicle'], rootSys['constGrp'] )
    cmds.pointConstraint( rt_shoulder_rivet['constGrp'], cmds.listRelatives(rt_arm['start_ctrl'], p=1)[0] )
    
    lf_eye_rivet = rivet.build( targ='lf_head_eye_defJnt', mesh='cn_body_render_mesh', side='lf', rigPart='eye', cleanUp=cleanUp )
    cmds.parent( lf_eye_rivet['follicle'], rootSys['constGrp'] )
    
    rt_eye_rivet = rivet.build( targ='rt_head_eye_defJnt', mesh='cn_body_render_mesh', side='rt', rigPart='eye', cleanUp=cleanUp )
    cmds.parent( rt_eye_rivet['follicle'], rootSys['constGrp'] )
    
    connectToPuppet()
    
    
def connectToPuppet():
    '''
    for every defJnt, creates a parent constraint to the relevant rig joint
    For now this is all pretty much hard coded and will break if this is run in a scene where the rig has been referenced into a non-default namespace
    
    '''
    constrainDict = {
                     # spine
                     'cn_spine_01_defJnt':'cn_spine_driven1_jnt',
                     'cn_spine_02_defJnt':'cn_spine_driven2_jnt',
                     'cn_spine_03_defJnt':'cn_spine_driven3_jnt',
                     'cn_spine_04_defJnt':'cn_spine_driven4_jnt',
                     'cn_spine_05_defJnt':'cn_spine_driven5_jnt',
                     'cn_spine_06_defJnt':'cn_spine_driven6_jnt',
                     'cn_spine_07_defJnt':'cn_spine_driven7_jnt',
                     'cn_spine_08_defJnt':'cn_spine_driven8_jnt',
                     'cn_spine_09_defJnt':'cn_spine_driven9_jnt',
                     'cn_spine_10_defJnt':'cn_spine_driven10_jnt',
                     'cn_spine_11_defJnt':'cn_spine_driven11_jnt',
                     
                     # eyes
                     'lf_head_eye_defJnt':'lf_eye_rivetConst_grp',
                     'rt_head_eye_defJnt':'rt_eye_rivetConst_grp',
                     
                     # lf arm
                     'lf_shoulder_1_defJnt':'lf_up_arm_1_jnt',
                     'lf_shoulder_2_defJnt':'lf_up_arm_2_jnt',
                     'lf_shoulder_3_defJnt':'lf_up_arm_3_jnt',
                     'lf_shoulder_4_defJnt':'lf_up_arm_4_jnt',
                     'lf_shoulder_5_defJnt':'lf_up_arm_5_jnt',
                     'lf_arm_1_defJnt':'lf_low_arm_1_jnt',
                     'lf_arm_2_defJnt':'lf_low_arm_2_jnt',
                     'lf_arm_3_defJnt':'lf_low_arm_3_jnt',
                     'lf_arm_4_defJnt':'lf_low_arm_4_jnt',
                     'lf_arm_5_defJnt':'lf_low_arm_5_jnt',
                     
                     # lf hand
                     'lf_hand_root_defJnt':'lf_hand_root_jnt',
                     'lf_hand_pinky1_defJnt':'lf_hand_pinky1_jnt',
                     'lf_hand_pinkyExtend2_defJnt':'lf_hand_pinkyExtend2_jnt',
                     'lf_hand_pinky2_defJnt':'lf_hand_pinky2_jnt',
                     'lf_hand_pinkyExtend3_defJnt':'lf_hand_pinkyExtend3_jnt',
                     'lf_hand_pinky3_defJnt':'lf_hand_pinky3_jnt',
                     'lf_hand_pinkyExtend4_defJnt':'lf_hand_pinkyExtend4_jnt',
                     'lf_hand_pinky4_defJnt':'lf_hand_pinky4_jnt',
                     'lf_hand_pinky5_defJnt':'lf_hand_pinky5_jnt',
                     'lf_hand_mid1_defJnt':'lf_hand_mid1_jnt',
                     'lf_hand_midExtend2_defJnt':'lf_hand_midExtend2_jnt',
                     'lf_hand_mid2_defJnt':'lf_hand_mid2_jnt',
                     'lf_hand_midExtend3_defJnt':'lf_hand_midExtend3_jnt',
                     'lf_hand_mid3_defJnt':'lf_hand_mid3_jnt',
                     'lf_hand_midExtend4_defJnt':'lf_hand_midExtend4_jnt',
                     'lf_hand_mid4_defJnt':'lf_hand_mid4_jnt',
                     'lf_hand_mid5_defJnt':'lf_hand_mid5_jnt',
                     'lf_hand_index1_defJnt':'lf_hand_index1_jnt',
                     'lf_hand_indexExtend2_defJnt':'lf_hand_indexExtend2_jnt',
                     'lf_hand_index2_defJnt':'lf_hand_index2_jnt',
                     'lf_hand_indexExtend3_defJnt':'lf_hand_indexExtend3_jnt',
                     'lf_hand_index3_defJnt':'lf_hand_index3_jnt',
                     'lf_hand_indexExtend4_defJnt':'lf_hand_indexExtend4_jnt',
                     'lf_hand_index4_defJnt':'lf_hand_index4_jnt',
                     'lf_hand_index5_defJnt':'lf_hand_index5_jnt',
                     'lf_hand_thumb1_defJnt':'lf_hand_thumb1_jnt',
                     'lf_hand_thumbExtend2_defJnt':'lf_hand_thumbExtend2_jnt',
                     'lf_hand_thumb2_defJnt':'lf_hand_thumb2_jnt',
                     'lf_hand_thumbExtend3_defJnt':'lf_hand_thumbExtend3_jnt',
                     'lf_hand_thumb3_defJnt':'lf_hand_thumb3_jnt',
                     'lf_hand_thumb4_defJnt':'lf_hand_thumb4_jnt',
                     
                     # lf leg
                     'lf_leg_1_defJnt':'lf_up_leg_1_jnt',
                     'lf_leg_2_defJnt':'lf_up_leg_2_jnt',
                     'lf_leg_3_defJnt':'lf_up_leg_3_jnt',
                     'lf_leg_4_defJnt':'lf_up_leg_4_jnt',
                     'lf_knee_1_defJnt':'lf_low_leg_1_jnt',
                     'lf_knee_2_defJnt':'lf_low_leg_2_jnt',
                     'lf_knee_3_defJnt':'lf_low_leg_3_jnt',
                     'lf_knee_4_defJnt':'lf_low_leg_4_jnt',
                     'lf_foot_defJnt':'lf_end_leg_jnt',
                     'lf_foot_end_defJnt':'lf_extra_leg_drvJnt',
                     'lf_ankle_defJnt':'lf_ankle_driven_jnt',
                     'lf_ball_defJnt':'lf_ball_driven_jnt',
                     'lf_toe_defJnt':'lf_toe_driven_jnt',
                     
                     # rt arm
                     'rt_shoulder_1_defJnt':'rt_up_arm_1_jnt',
                     'rt_shoulder_2_defJnt':'rt_up_arm_2_jnt',
                     'rt_shoulder_3_defJnt':'rt_up_arm_3_jnt',
                     'rt_shoulder_4_defJnt':'rt_up_arm_4_jnt',
                     'rt_shoulder_5_defJnt':'rt_up_arm_5_jnt',
                     'rt_arm_1_defJnt':'rt_low_arm_1_jnt',
                     'rt_arm_2_defJnt':'rt_low_arm_2_jnt',
                     'rt_arm_3_defJnt':'rt_low_arm_3_jnt',
                     'rt_arm_4_defJnt':'rt_low_arm_4_jnt',
                     'rt_arm_5_defJnt':'rt_low_arm_5_jnt',
                     
                     # rt hand
                     'rt_hand_root_defJnt':'rt_hand_root_jnt',
                     'rt_hand_pinky1_defJnt':'rt_hand_pinky1_jnt',
                     'rt_hand_pinkyExtend2_defJnt':'rt_hand_pinkyExtend2_jnt',
                     'rt_hand_pinky2_defJnt':'rt_hand_pinky2_jnt',
                     'rt_hand_pinkyExtend3_defJnt':'rt_hand_pinkyExtend3_jnt',
                     'rt_hand_pinky3_defJnt':'rt_hand_pinky3_jnt',
                     'rt_hand_pinkyExtend4_defJnt':'rt_hand_pinkyExtend4_jnt',
                     'rt_hand_pinky4_defJnt':'rt_hand_pinky4_jnt',
                     'rt_hand_pinky5_defJnt':'rt_hand_pinky5_jnt',
                     'rt_hand_mid1_defJnt':'rt_hand_mid1_jnt',
                     'rt_hand_midExtend2_defJnt':'rt_hand_midExtend2_jnt',
                     'rt_hand_mid2_defJnt':'rt_hand_mid2_jnt',
                     'rt_hand_midExtend3_defJnt':'rt_hand_midExtend3_jnt',
                     'rt_hand_mid3_defJnt':'rt_hand_mid3_jnt',
                     'rt_hand_midExtend4_defJnt':'rt_hand_midExtend4_jnt',
                     'rt_hand_mid4_defJnt':'rt_hand_mid4_jnt',
                     'rt_hand_mid5_defJnt':'rt_hand_mid5_jnt',
                     'rt_hand_index1_defJnt':'rt_hand_index1_jnt',
                     'rt_hand_indexExtend2_defJnt':'rt_hand_indexExtend2_jnt',
                     'rt_hand_index2_defJnt':'rt_hand_index2_jnt',
                     'rt_hand_indexExtend3_defJnt':'rt_hand_indexExtend3_jnt',
                     'rt_hand_index3_defJnt':'rt_hand_index3_jnt',
                     'rt_hand_indexExtend4_defJnt':'rt_hand_indexExtend4_jnt',
                     'rt_hand_index4_defJnt':'rt_hand_index4_jnt',
                     'rt_hand_index5_defJnt':'rt_hand_index5_jnt',
                     'rt_hand_thumb1_defJnt':'rt_hand_thumb1_jnt',
                     'rt_hand_thumbExtend2_defJnt':'rt_hand_thumbExtend2_jnt',
                     'rt_hand_thumb2_defJnt':'rt_hand_thumb2_jnt',
                     'rt_hand_thumbExtend3_defJnt':'rt_hand_thumbExtend3_jnt',
                     'rt_hand_thumb3_defJnt':'rt_hand_thumb3_jnt',
                     'rt_hand_thumb4_defJnt':'rt_hand_thumb4_jnt',
                     
                     # rt leg
                     'rt_leg_1_defJnt':'rt_up_leg_1_jnt',
                     'rt_leg_2_defJnt':'rt_up_leg_2_jnt',
                     'rt_leg_3_defJnt':'rt_up_leg_3_jnt',
                     'rt_leg_4_defJnt':'rt_up_leg_4_jnt',
                     'rt_knee_1_defJnt':'rt_low_leg_1_jnt',
                     'rt_knee_2_defJnt':'rt_low_leg_2_jnt',
                     'rt_knee_3_defJnt':'rt_low_leg_3_jnt',
                     'rt_knee_4_defJnt':'rt_low_leg_4_jnt',
                     'rt_foot_defJnt':'rt_end_leg_jnt',
                     'rt_foot_end_defJnt':'rt_extra_leg_drvJnt',
                     'rt_ankle_defJnt':'rt_ankle_driven_jnt',
                     'rt_ball_defJnt':'rt_ball_driven_jnt',
                     'rt_toe_defJnt':'rt_toe_driven_jnt'
                     }
    
    for key in constrainDict.keys():
        cmds.parentConstraint( constrainDict[key], key )
    
    