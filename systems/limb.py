#ToDo: fk rotations are mirrored to grab controls on both arms and pose them together / will have negative translate values along the twisting axis on one side
#(OK)  stretch rig 
#(OK)  skin / bendy attrs
#      leg limb adjustments
#      manual stretch attribute

from maya import mel, cmds
from anomalia.systems import twistSection
from anomalia.core import common, controls
from anomalia.core.utils import showDialog


def build( startJoint=None, middleJoint=None, endJoint=None, extraJoint=None, side=None, name=None, twistJointCount=None ):
    if not startJoint or not middleJoint or not endJoint or not extraJoint or not side or not name or not twistJointCount:
        print 'limb: Error! Must supply all arguments.'
        return

    # first reconstruct the joints for our system
    joint1 = cmds.createNode( 'joint', n=side+'_start_'+name+'_jnt' )
    joint2 = cmds.createNode( 'joint', n=side+'_middle_'+name+'_jnt' )
    joint3 = cmds.createNode( 'joint', n=side+'_end_'+name+'_jnt' )
    joint4 = cmds.createNode( 'joint', n=side+'_extra_'+name+'_jnt' )
    common.align( node=joint1, target=startJoint )
    common.align( node=joint2, target=middleJoint )
    common.align( node=joint3, target=endJoint )
    common.align( node=joint4, target=extraJoint )
    cmds.parent( joint4, joint3 )
    cmds.parent( joint3, joint2 )
    cmds.parent( joint2, joint1 )
    cmds.makeIdentity( joint1, apply=True )

    # auto color controls using the 'side' argument
    myColor  = 'green'
    if   side == 'lf': myColor = 'blue'
    elif side == 'rt': myColor = 'red'

    # creation of the start control (shoulder or hips offset)
    limbStartCtrl = controls.Control( side=side, rigPart='limb', function=name+'_start', nodeType='ctrl', size=1, color=myColor, aimAxis='z' )
    limbStartCtrl.pinCtrl()
    common.align( node=limbStartCtrl.control, target=joint1, orient=False )
    limbStartCtrlGrp = common.insertGroup( node=limbStartCtrl.control )

    # creation of the end control (hand or foot)
    limbEndCtrl = controls.Control( side=side, rigPart='limb', function=name+'_end', nodeType='ctrl', size=1, color=myColor, aimAxis='x' )
    limbEndCtrl.cubeCtrl()
    common.align( node=limbEndCtrl.control, target=joint3 )
    limbEndCtrlGrp = common.insertGroup( node=limbEndCtrl.control )


    # entire system group
    systemGrp = cmds.group( empty=True, n=side+'_'+name+'_grp')
    cmds.parent( joint1, systemGrp )

    #
    # NON ROLLs CREATION 
    #

    # twist extraction for shoulder/hips
    startNonRollStart = cmds.createNode( 'joint', n=side+'_start_'+name+'_nonRoll' )
    startNonRollEnd   = cmds.createNode( 'joint', n=side+'_start_'+name+'_nonRoll_end' )
    startNonRollLoc   = cmds.spaceLocator( n=startNonRollStart+'_info' )[0]
    common.align( node=startNonRollStart, target=joint1 )
    common.align( node=startNonRollEnd, target=joint2 )
    common.align( node=startNonRollLoc, target=joint1, orient=False )
    cmds.parent( startNonRollEnd, startNonRollStart )
    cmds.parent( startNonRollLoc, startNonRollStart )
    startTwistIkHandle, startTwistEffector = cmds.ikHandle( startJoint=startNonRollStart, endEffector=startNonRollEnd, solver='ikRPsolver', n=side+'_start_'+name+'_nonRoll_ikHandle' )
    cmds.setAttr( startTwistIkHandle+'.poleVector', 0,0,0 )
    startNonRollGrp   = cmds.group( startNonRollStart, n=startNonRollStart+'_grp' )
    cmds.parent( startTwistIkHandle, joint1 )
    cmds.parent( startNonRollGrp, systemGrp )
    cmds.aimConstraint( startNonRollEnd, startNonRollLoc, aimVector=(1,0,0), upVector=(0,1,0), worldUpType='objectrotation', worldUpVector=(0,1,0), worldUpObject=joint1 )

    # twist extraction for elbow/knee
    upNonRollStart = cmds.createNode( 'joint', n=side+'_up_'+name+'_nonRoll' )
    upNonRollEnd   = cmds.createNode( 'joint', n=side+'_up_'+name+'_nonRoll_end' )
    upNonRollLoc   = cmds.spaceLocator( n=upNonRollStart+'_info' )[0]
    common.align( node=upNonRollStart, target=joint2 )
    common.align( node=upNonRollEnd, target=joint3 )
    common.align( node=upNonRollLoc, target=joint2, orient=False )
    cmds.parent( upNonRollEnd, upNonRollStart )
    cmds.parent( upNonRollLoc, upNonRollStart )
    upTwistIkHandle, upTwistEffector = cmds.ikHandle( startJoint=upNonRollStart, endEffector=upNonRollEnd, solver='ikRPsolver', n=side+'_up_'+name+'_nonRoll_ikHandle' )
    cmds.setAttr( upTwistIkHandle+'.poleVector', 0,0,0 )
    upNonRollGrp   = cmds.group( upNonRollStart, n=upNonRollStart+'_grp' )
    cmds.parent( upTwistIkHandle, joint2 )
    cmds.parent( upNonRollGrp, joint1 )
    cmds.aimConstraint( upNonRollEnd, upNonRollLoc, aimVector=(1,0,0), upVector=(0,1,0), worldUpType='objectrotation', worldUpVector=(0,1,0), worldUpObject=joint2 )

    # twist extraction for wrist/foot
    lowNonRollStart = cmds.createNode( 'joint', n=side+'_low_'+name+'_nonRoll' )
    lowNonRollEnd   = cmds.createNode( 'joint', n=side+'_low_'+name+'_nonRoll_end' )
    lowNonRollLoc   = cmds.spaceLocator( n=lowNonRollStart+'_info' )[0]
    common.align( node=lowNonRollStart, target=joint3 )
    common.align( node=lowNonRollEnd, target=joint4 )
    common.align( node=lowNonRollLoc, target=joint3, orient=False )
    cmds.parent( lowNonRollEnd, lowNonRollStart )
    cmds.parent( lowNonRollLoc, lowNonRollStart )
    lowTwistIkHandle, lowTwistEffector = cmds.ikHandle( startJoint=lowNonRollStart, endEffector=lowNonRollEnd, solver='ikRPsolver', n=side+'_low_'+name+'_nonRoll_ikHandle' )
    cmds.setAttr( lowTwistIkHandle+'.poleVector', 0,0,0 )
    lowNonRollGrp   = cmds.group( lowNonRollStart, n=lowNonRollStart+'_grp' )
    cmds.parent( lowTwistIkHandle, joint3 )
    cmds.parent( lowNonRollGrp, joint2 )
    cmds.aimConstraint( lowNonRollEnd, lowNonRollLoc, aimVector=(1,0,0), upVector=(0,1,0), worldUpType='objectrotation', worldUpVector=(0,1,0), worldUpObject=joint3 )

    # create stretch setup
    ssStartPos = cmds.group( empty=True, n=side+'_'+name+'_stretchStart_loc')
    ssEndPos   = cmds.group( empty=True, n=side+'_'+name+'_stretchEnd_loc')
    common.align( node=ssStartPos, target=joint1, orient=False )
    cmds.pointConstraint( limbEndCtrl.control, ssEndPos )
    ssGrp      = cmds.group( ssStartPos, ssEndPos, n=side+'_'+name+'_stretchLocs_grp')
    cmds.parent( ssGrp, systemGrp )

    # sums the two separate distances to create the stretch
    originalUpLimbTx  = cmds.getAttr( joint2+'.translateX' )
    originalLowLimbTx = cmds.getAttr( joint3+'.translateX' )
    limbSize = common.getDistance( joint1, joint2 ) + common.getDistance( joint2, joint3 )
    dbNode   = cmds.createNode( 'distanceBetween', n=side+'_'+name+'_stretch_distance')
    cmds.connectAttr( ssStartPos+'.t', dbNode+'.point1' )
    cmds.connectAttr( ssEndPos+'.t', dbNode+'.point2' )

    # creates a keyframe-based stretch factor
    ssKeyUp = cmds.createNode( 'animCurveUL', n=side+'_'+name+'_upStretch_key' )
    cmds.connectAttr( dbNode+'.distance', ssKeyUp+'.input' )
    cmds.connectAttr( ssKeyUp+'.output', joint2+'.translateX' )
    ssKeyLow = cmds.createNode( 'animCurveUL', n=side+'_'+name+'_LowStretch_key' )
    cmds.connectAttr( dbNode+'.distance', ssKeyLow+'.input' )
    cmds.connectAttr( ssKeyLow+'.output', joint3+'.translateX' )
    
    # set driven key values
    cmds.setDrivenKeyframe( joint2+'.translateX', currentDriver=dbNode+'.distance', driverValue=limbSize, value=originalUpLimbTx, itt='linear', ott='linear' )
    cmds.setDrivenKeyframe( joint2+'.translateX', currentDriver=dbNode+'.distance', driverValue=limbSize*2, value=originalUpLimbTx*2, itt='linear', ott='spline' )
    cmds.setInfinity( joint2+'.translateX', poi='linear' )
    cmds.setDrivenKeyframe( joint3+'.translateX', currentDriver=dbNode+'.distance', driverValue=limbSize, value=originalLowLimbTx, itt='linear', ott='linear' )
    cmds.setDrivenKeyframe( joint3+'.translateX', currentDriver=dbNode+'.distance', driverValue=limbSize*2, value=originalLowLimbTx*2, itt='linear', ott='spline' )
    cmds.setInfinity( joint3+'.translateX', poi='linear' )

    # create the twistSections
    upTwistDict  = twistSection.build( side=side, name='up_'+name, startPos=joint1, endPos=joint2, jointCount=twistJointCount, worldUpVector='z', worldUpObject=startNonRollStart, twistReader=startNonRollLoc )
    lowTwistDict = twistSection.build( side=side, name='lw_'+name, startPos=joint2, endPos=joint3, jointCount=twistJointCount, worldUpVector='z', worldUpObject=upNonRollStart, twistReader=lowNonRollLoc )

    # create the joints that will skin the twistSection curves
    # to get that nice bendy effect for free
    # start with the shoulder/hips joint
    crvJntA1 = cmds.createNode( 'joint', n=side+'_'+name+'_up_curve_1_jnt')
    crvJntA2 = cmds.createNode( 'joint', n=side+'_'+name+'_up_curve_2_jnt')
    cmds.parent( crvJntA2, crvJntA1 )
    cmds.parent( crvJntA1, systemGrp )
    cmds.addAttr( limbEndCtrl.control, ln='start_tangent', min=0, dv=0.1, k=True )
    cmds.connectAttr( limbEndCtrl.control+'.start_tangent', crvJntA2+'.translateX' )
    common.align( node=crvJntA1, target=joint1 )

    # elbow/knee joints
    avgGrp   = cmds.group( empty=True, n=side+'_'+name+'_avg_grp' )

    crvJntB1 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_1_jnt')
    crvJntB2 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_2_jnt')
    cmds.parent( crvJntB2, crvJntB1 )
    cmds.parent( crvJntB1, avgGrp )
    cmds.setAttr( crvJntB1+'.rotateY', 180 ) # flip

    crvJntC1 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_3_jnt')
    crvJntC2 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_4_jnt')
    cmds.parent( crvJntC2, crvJntC1 )
    cmds.parent( crvJntC1, avgGrp )
    cmds.addAttr( limbEndCtrl.control, ln='bend_tangent', min=0, dv=0.85, k=True )
    cmds.connectAttr( limbEndCtrl.control+'.bend_tangent', crvJntB2+'.translateX' )
    cmds.connectAttr( limbEndCtrl.control+'.bend_tangent', crvJntC2+'.translateX' )

    cmds.pointConstraint( joint2, avgGrp )
    cons     = cmds.orientConstraint( joint1, joint2, avgGrp )[0]
    cmds.setAttr( cons+'.interpType', 2 ) # shortest
    
    # wrist/foot joints
    crvJntD1 = cmds.createNode( 'joint', n=side+'_'+name+'_low_curve_1_jnt')
    crvJntD2 = cmds.createNode( 'joint', n=side+'_'+name+'_low_curve_2_jnt')
    crvJntD1Grp = cmds.group( crvJntD1, n=crvJntD1+'_grp' )
    cmds.parent( crvJntD2, crvJntD1 )
    cmds.parent( crvJntD1Grp, systemGrp )
    cmds.setAttr( crvJntD1+'.rotateY', 180 ) # flip
    cmds.parentConstraint( limbEndCtrl.control, crvJntD1Grp )
    cmds.addAttr( limbEndCtrl.control, ln='end_tangent', min=0, dv=0.5, k=True )
    cmds.connectAttr( limbEndCtrl.control+'.end_tangent', crvJntD2+'.translateX' )

    # extra jnt follow orientation of endCtrl
    cmds.orientConstraint( limbEndCtrl.control, joint3, mo=True )

    # constrains entire limb to startCtrl
    cmds.orientConstraint( limbStartCtrl.control, startNonRollGrp, mo=True )
    cmds.parentConstraint( limbStartCtrl.control, systemGrp, mo=True )

    # skin the twistSection curves to these joints
    skinClsUp  = cmds.skinCluster( crvJntA1, crvJntA2, crvJntB1, crvJntB2, upTwistDict['twist_curve'] )[0]
    cmds.skinPercent( skinClsUp, upTwistDict['twist_curve']+'.cv[0]', transformValue=[(crvJntA1, 1)])
    cmds.skinPercent( skinClsUp, upTwistDict['twist_curve']+'.cv[1]', transformValue=[(crvJntA2, 1)])
    cmds.skinPercent( skinClsUp, upTwistDict['twist_curve']+'.cv[2]', transformValue=[(crvJntB2, 1)])
    cmds.skinPercent( skinClsUp, upTwistDict['twist_curve']+'.cv[3]', transformValue=[(crvJntB1, 1)])

    skinClsLow = cmds.skinCluster( crvJntC1, crvJntC2, crvJntD1, crvJntD2, lowTwistDict['twist_curve'] )[0]
    cmds.skinPercent( skinClsLow, lowTwistDict['twist_curve']+'.cv[0]', transformValue=[(crvJntC1, 1)])
    cmds.skinPercent( skinClsLow, lowTwistDict['twist_curve']+'.cv[1]', transformValue=[(crvJntC2, 1)])
    cmds.skinPercent( skinClsLow, lowTwistDict['twist_curve']+'.cv[2]', transformValue=[(crvJntD2, 1)])
    cmds.skinPercent( skinClsLow, lowTwistDict['twist_curve']+'.cv[3]', transformValue=[(crvJntD1, 1)])

    #
    # IKHANDLE CREATION
    #
    ikHandle, effector = cmds.ikHandle( startJoint=joint1, endEffector=joint3, solver='ikRPsolver', n=side+'_'+name+'_ikHandle' )

    pvCtrl   = controls.Control( side=side, rigPart=name, function='poleVec', nodeType="ctrl", size=1, color="green", aimAxis="twistAxis" )
    pvCtrl.cubeCtrl()

    # snaps the poleVector control to the middle joint
    common.align( node=pvCtrl.control, target=joint2, orient=False )
    pvCtrlGrp = common.insertGroup( node=pvCtrl.control )
    cmds.poleVectorConstraint( pvCtrl.control, ikHandle )

    # use this if polevector is not behind, maybe in the legs?
    #cmds.setAttr( pvCtrlGrp+'.tz', 5 )
    cmds.setAttr( pvCtrlGrp+'.tz', -5 )

    # ikHandle follow endCtrl
    cmds.pointConstraint( limbEndCtrl.control, ikHandle )
    
    # extra attributes to endCtrl
    cmds.addAttr( limbEndCtrl.control, ln='twist', k=True )
    cmds.connectAttr( limbEndCtrl.control+'.twist', ikHandle+'.twist' )

    #
    # CLEAN UP
    #
    cmds.parent( ikHandle, limbEndCtrl.control )
    cmds.parent( lowTwistDict['twist_curve'], upTwistDict['twist_curve'], avgGrp, systemGrp )
    cmds.setAttr( lowTwistDict['twist_curve']+'.inheritsTransform', 0 )
    cmds.setAttr( upTwistDict['twist_curve']+'.inheritsTransform', 0 )

    cmds.parent( lowTwistDict['motionPaths_group'], upTwistDict['motionPaths_group'], systemGrp )
    for mp in cmds.listRelatives( lowTwistDict['motionPaths_group'] ) + cmds.listRelatives( upTwistDict['motionPaths_group'] ):
        cmds.setAttr( mp+'.inheritsTransform', 0 )


    returnDic = { 'ikHandle'   : ikHandle,
                  'jointList'  : [ joint1, joint2, joint3, joint4 ],
                  'poleVector' : pvCtrl,
                  'start_ctrl' : limbStartCtrl.control,
                  'end_ctrl'   : limbEndCtrl.control,
                  'skinJoints_group' : [ upTwistDict['joints_group'], lowTwistDict['joints_group'] ],
                  'limbSystem_grp'   : systemGrp
                }
    return returnDic

def test():
    cmds.select( clear=True )
    # arm
    mel.eval('joint -p 0 0 0; joint -p 5 0 -1; joint -e -zso -oj xyz -sao yup joint1; joint -p 9 0 0; joint -e -zso -oj xyz -sao yup joint2; joint -p 11 0 0; joint -e -zso -oj xyz -sao yup joint3;')
    
    # leg - (WIP !)
    #mel.eval('joint -p 0 6 0 ; joint -p 0 3 1; joint -e -zso -oj xyz -sao yup joint1; joint -p 0 0 0; joint -e -zso -oj xyz -sao yup joint2; joint -p 0 -1 2; joint -e -zso -oj xyz -sao yup joint3;')

    build( startJoint='joint1', middleJoint='joint2', endJoint='joint3', extraJoint='joint4', side='lf', name='arm', twistJointCount=6 )