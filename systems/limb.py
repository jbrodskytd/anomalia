#ToDo:
#      manual stretch attribute
#      find ideal poleVector position (wont be used)
#      label skin joints
#      FK setup ( fk rotations are mirrored to grab controls on both arms and pose them together / will have negative translate values along the twisting axis on one side )

from maya import mel, cmds
from anomalia.systems import twistSection, nonRoll
from anomalia.core import common, controls


def build( startJoint=None, middleJoint=None, endJoint=None, extraJoint=None, side=None, name=None, twistJointCount=None, isLeg=False, cleanUp=True ):
    if not startJoint or not middleJoint or not endJoint or not extraJoint or not side or not name or not twistJointCount:
        print 'limb: Error! Must supply all arguments.'
        return

    # first reconstruct the joints for our system
    joint1 = cmds.createNode( 'joint', n=side+"_"+name+'_start_drvJnt' )
    joint2 = cmds.createNode( 'joint', n=side+"_"+name+'_middle_drvJnt' )
    joint3 = cmds.createNode( 'joint', n=side+"_"+name+'_end_jnt' )
    joint4 = cmds.createNode( 'joint', n=side+"_"+name+'_extra_drvJnt' )
    common.align( node=joint1, target=startJoint )
    cmds.setAttr('%s.jointOrient' % joint1, 0,0,0)
    common.align( node=joint2, target=middleJoint )
    cmds.setAttr('%s.jointOrient' % joint2, 0,0,0)
    common.align( node=joint3, target=endJoint )
    cmds.setAttr('%s.jointOrient' % joint3, 0,0,0)
    common.align( node=joint4, target=extraJoint )
    cmds.setAttr('%s.jointOrient' % joint4, 0,0,0)
    cmds.parent( joint4, joint3 )
    cmds.parent( joint3, joint2 )
    cmds.parent( joint2, joint1 )
    if isLeg: cmds.setAttr( joint2+'.preferredAngle', 0, 0, -90 )
    else:     cmds.setAttr( joint2+'.preferredAngle', 0, -90, 0 )
    cmds.makeIdentity( joint1, apply=True )

    # auto color controls using the 'side' argument
    myColor  = 'green'
    if   side == 'lf': myColor = 'blue'
    elif side == 'rt': myColor = 'red'

    # creation of the start control (shoulder or hips offset)
    limbStartCtrl = controls.Control( side=side, rigPart='limb', function=name+'_start', nodeType='ctrl', size=0.4, color=myColor, aimAxis='y' )
    limbStartCtrl.pinCtrl()
    common.align( node=limbStartCtrl.control, target=joint1, orient=False )
    limbStartCtrlGrp = common.insertGroup( node=limbStartCtrl.control )

    # creation of the end control (hand or foot)
    limbEndCtrl = controls.Control( side=side, rigPart='limb', function=name+'_end', nodeType='ctrl', size=0.4 + 0.2*isLeg, color=myColor, aimAxis='x' )
    limbEndCtrl.cubeCtrl()
    common.align( node=limbEndCtrl.control, target=joint3, orient=False )
    limbEndCtrlGrp = common.insertGroup( node=limbEndCtrl.control )


    # entire system group
    systemGrp = cmds.group( empty=True, n=side+'_'+name+'_xform_grp')
    cmds.parent( joint1, systemGrp )

    #
    # NON ROLLs CREATION 
    #

    startNonRoll = nonRoll.build(joint=joint1, name = name+'Start')
    cmds.parent(startNonRoll['main_grp'], systemGrp)
    
    upNonRoll = nonRoll.build(joint=joint2, name = name+'Mid')
    cmds.parent(upNonRoll['main_grp'], joint1)
    
    lowNonRoll = nonRoll.build(joint=joint3, name = name+'End')
    cmds.parent(lowNonRoll['main_grp'], joint2)
    
    
    '''
    if isLeg:
        if   side == 'lf': aimUp  = (0,  1, 0)
        elif side == 'rt': aimUp  = (0, -1, 0)
    cmds.aimConstraint( lowNonRollEnd, lowNonRollLoc, aimVector=aimVec, upVector=aimUp, worldUpType='objectrotation', worldUpVector=aimWorldUp, worldUpObject=joint3 )

    if isLeg:
        common.align( node=lowNonRollLocGrp, target=joint3 )
    else:
        common.align( node=lowNonRollLocGrp, target=joint2 )
        common.align( node=lowNonRollLocGrp, target=joint3, orient=False )

    cmds.setAttr( lowNonRollGrp+'.v', 0 )
    cmds.setAttr( lowTwistIkHandle+'.poleVector', 0, 0, 0 )
    if not isLeg:
        if side == 'rt': cmds.setAttr( lowNonRollLocGrp+'.r', 0, 0, 0 )
    else:
        if side == 'lf': cmds.setAttr( lowNonRollLocGrp+'.r', 90, 0, 0 )
    '''

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
    twistUp = 'z'
    if isLeg: twistUp = 'y'
    doNotInvertUp = False
    if isLeg and side == 'rt': doNotInvertUp = True
    upTwistDict  = twistSection.build( side=side, name='up_'+name, startPos=joint1, endPos=joint2, jointCount=twistJointCount, worldUpVector=twistUp, worldUpObject=startNonRoll['nonRoll'], twistReader=startNonRoll['info'], doNotInvertUp=doNotInvertUp )
    lowTwistDict = twistSection.build( side=side, name='low_'+name, startPos=joint2, endPos=joint3, jointCount=twistJointCount, worldUpVector=twistUp, worldUpObject=upNonRoll['nonRoll'], twistReader=lowNonRoll['info'], doNotInvertUp=doNotInvertUp )

    # create the joints that will skin the twistSection curves
    # to get that nice bendy effect for free
    # start with the shoulder/hips joint
    mdNode   = None
    crvJntA1 = cmds.createNode( 'joint', n=side+'_'+name+'_up_curve_1_jnt')
    crvJntA2 = cmds.createNode( 'joint', n=side+'_'+name+'_up_curve_2_jnt')
    cmds.parent( crvJntA2, crvJntA1 )
    cmds.parent( crvJntA1, systemGrp )
    cmds.addAttr( limbEndCtrl.control, ln='start_tangent', min=0, dv=0.1, k=True )
    if side == 'lf':
        cmds.connectAttr( limbEndCtrl.control+'.start_tangent', crvJntA2+'.translateX' )
    else:
        mdNode = cmds.createNode( 'multiplyDivide', n=side+'_'+name+'_pma' )
        cmds.setAttr( mdNode+'.input2', -1, -1, -1 )
        cmds.connectAttr( limbEndCtrl.control+'.start_tangent', mdNode+'.input1X' )
        cmds.connectAttr( mdNode+'.outputX', crvJntA2+'.translateX' )

    common.align( node=crvJntA1, target=joint1 )

    # elbow/knee joints
    avgGrp   = cmds.group( empty=True, n=side+'_'+name+'_avg_grp' )

    crvJntB1 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_1_avgJnt')
    crvJntB2 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_2_avgJnt')
    cmds.parent( crvJntB2, crvJntB1 )
    cmds.parent( crvJntB1, avgGrp )
    cmds.setAttr( crvJntB1+'.rotateY', 180 ) # flip

    crvJntC1 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_3_avgJnt')
    crvJntC2 = cmds.createNode( 'joint', n=side+'_'+name+'_cn_curve_4_avgJnt')
    cmds.parent( crvJntC2, crvJntC1 )
    cmds.parent( crvJntC1, avgGrp )
    cmds.addAttr( limbEndCtrl.control, ln='bend_tangent', min=0, dv=0.85, k=True )
    if mdNode:
        cmds.connectAttr( limbEndCtrl.control+'.bend_tangent', mdNode+'.input1Y' )
        cmds.connectAttr( mdNode+'.outputY', crvJntB2+'.translateX' )
        cmds.connectAttr( mdNode+'.outputY', crvJntC2+'.translateX' )
    else:
        cmds.connectAttr( limbEndCtrl.control+'.bend_tangent', crvJntB2+'.translateX' )
        cmds.connectAttr( limbEndCtrl.control+'.bend_tangent', crvJntC2+'.translateX' )

    cmds.pointConstraint( joint2, avgGrp )
    cons     = cmds.orientConstraint( joint1, joint2, avgGrp )[0]
    cmds.setAttr( cons+'.interpType', 0 ) # noFlip
    
    # wrist/foot joints
    crvJntD1 = cmds.createNode( 'joint', n=side+'_'+name+'_low_curve_1_jnt')
    crvJntD2 = cmds.createNode( 'joint', n=side+'_'+name+'_low_curve_2_jnt')
    crvJntD1Grp = cmds.group( crvJntD1, n=crvJntD1+'_grp' )
    cmds.parent( crvJntD2, crvJntD1 )
    cmds.parent( crvJntD1Grp, systemGrp )
    cmds.setAttr( crvJntD1+'.rotateY', 180 ) # flip
    common.align( node=crvJntD1Grp, target=joint3 )
    cmds.parentConstraint( limbEndCtrl.control, crvJntD1Grp, mo=True )
    cmds.addAttr( limbEndCtrl.control, ln='end_tangent', min=0, dv=0.2, k=True )
    if mdNode:
        cmds.connectAttr( limbEndCtrl.control+'.end_tangent', mdNode+'.input1Z' )
        cmds.connectAttr( mdNode+'.outputZ', crvJntD2+'.translateX' )
    else:
        cmds.connectAttr( limbEndCtrl.control+'.end_tangent', crvJntD2+'.translateX' )

    # extra jnt follow orientation of endCtrl
    cmds.orientConstraint( limbEndCtrl.control, joint3, mo=True )

    # constrains entire limb to startCtrl
    cmds.orientConstraint( limbStartCtrl.control, startNonRoll['main_grp'], mo=True )

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

    pvCtrl   = controls.Control( side=side, rigPart=name, function='poleVec', nodeType="ctrl", size=0.3, color=myColor, aimAxis="twistAxis" )
    pvCtrl.cubeCtrl()

    # snaps the poleVector control to the middle joint
    common.align( node=pvCtrl.control, target=joint2, orient=False )
    pvCtrlGrp = common.insertGroup( node=pvCtrl.control )
    cmds.poleVectorConstraint( pvCtrl.control, ikHandle )

    cmds.setAttr( pvCtrl.control+'.tz', -5 )
    # invert poleVector position if it's a leg
    if isLeg:
        cmds.setAttr( pvCtrl.control+'.tz', 5 )
        # auto follow foot control
        cmds.pointConstraint(  limbEndCtrl.control, pvCtrlGrp, mo=True )
        cmds.orientConstraint( limbEndCtrl.control, pvCtrlGrp, skip=['x'], mo=True )

    # ikHandle follow endCtrl
    cmds.pointConstraint( limbEndCtrl.control, ikHandle )

    # extra attributes to endCtrl
    cmds.addAttr( limbEndCtrl.control, ln='twist', k=True )
    cmds.connectAttr( limbEndCtrl.control+'.twist', ikHandle+'.twist' )

    ## ik lock
    # add attribute to control
    if ( cmds.attributeQuery( 'lock', node=limbEndCtrl.control, exists=True ) ) == True:
         print( 'Attribute %s already exists on %s.' % ( 'lock', limbEndCtrl ) )
    else:
        cmds.addAttr( limbEndCtrl.control, longName='lock', attributeType='float', keyable=True, min=0.0, max=1.0, dv=0.0 )

    # create distance locs
    startLoc = cmds.spaceLocator( name=side + '_' + name + '_start_loc' )[0]
    middleLoc = cmds.spaceLocator( name=side + '_' + name + '_middle_loc' )[0]
    endLoc = cmds.spaceLocator( name=side + '_' + name + '_end_loc' )[0]
    upDist = cmds.createNode( 'distanceDimShape' )
    lowDist = cmds.createNode( 'distanceDimShape' )

    cmds.connectAttr( cmds.listRelatives(startLoc)[0] + '.worldPosition[0]', upDist + '.startPoint' )
    cmds.connectAttr( cmds.listRelatives(middleLoc)[0] + '.worldPosition[0]', upDist + '.endPoint' )
    cmds.connectAttr( cmds.listRelatives(middleLoc)[0] + '.worldPosition[0]', lowDist + '.startPoint' )
    cmds.connectAttr( cmds.listRelatives(endLoc)[0] + '.worldPosition[0]', lowDist + '.endPoint' )

    cmds.pointConstraint( limbStartCtrl.control, startLoc )
    cmds.pointConstraint( pvCtrl.control, middleLoc )
    cmds.pointConstraint( limbEndCtrl.control, endLoc )

    # create and connect blend utilities
    bl2aLockUp = cmds.shadingNode( 'blendTwoAttr', asUtility=True )
    bl2aLockUp = cmds.rename(bl2aLockUp, common.getName(node=bl2aLockUp, side=side, rigPart=name, function='lock_up', nodeType='bl2a'))
    bl2aLockLow = cmds.shadingNode( 'blendTwoAttr', asUtility=True )
    bl2aLockLow = cmds.rename(bl2aLockLow, common.getName(node=bl2aLockLow, side=side, rigPart=name, function='lock_low', nodeType='bl2a'))

    cmds.connectAttr( ssKeyUp+'.output', bl2aLockUp + '.input[0]' )
    cmds.connectAttr( upDist + '.distance', bl2aLockUp + '.input[1]' )
    cmds.connectAttr( limbEndCtrl.control + '.lock', bl2aLockUp + '.attributesBlender' )
    cmds.connectAttr( bl2aLockUp + '.output', joint2 + '.translateX', force = True )

    cmds.connectAttr( ssKeyLow+'.output', bl2aLockLow + '.input[0]' )
    cmds.connectAttr( lowDist + '.distance', bl2aLockLow + '.input[1]' )
    cmds.connectAttr( limbEndCtrl.control + '.lock', bl2aLockLow + '.attributesBlender' )
    cmds.connectAttr( bl2aLockLow + '.output', joint3 + '.translateX', force = True )

    # get distance nodes transforms and rename
    upDist = cmds.listRelatives( upDist, parent=True )[0]
    upDist = cmds.rename( upDist, common.getName(node=upDist, side=side, rigPart=name, function='up', nodeType='distance') )
    lowDist = cmds.listRelatives( lowDist, parent=True )[0]
    lowDist = cmds.rename( lowDist, common.getName(node=lowDist, side=side, rigPart=name, function='low', nodeType='distance') )

    # negate distance output if side = rt
    if side == 'rt':
        mdivLockRev = cmds.shadingNode( 'multiplyDivide', asUtility=True)
        mdivLockRev = cmds.rename( mdivLockRev, common.getName(node=mdivLockRev, side=side, rigPart=name, function='lock_dist_rev', nodeType='mdiv') )
        cmds.setAttr( mdivLockRev + '.input2', -1, -1, -1 )
        cmds.connectAttr( upDist + '.distance', mdivLockRev + '.input1X', force=True )
        cmds.connectAttr( mdivLockRev + '.outputX', bl2aLockUp + '.input[1]', force=True )
        cmds.connectAttr( lowDist + '.distance', mdivLockRev + '.input1Y', force=True )
        cmds.connectAttr( mdivLockRev + '.outputY', bl2aLockLow + '.input[1]', force=True )

    # group lock utilities
    lockGrp = cmds.group( startLoc, middleLoc, endLoc, upDist, lowDist, name=side + '_' + name + '_lock_grp' )

    #
    # CLEAN UP
    #
    # hide objects
    if cleanUp:
        cmds.setAttr( ikHandle+'.v', 0 )
        cmds.parent( ikHandle, limbEndCtrl.control )
        cmds.setAttr( lowTwistDict['twist_curve']+'.inheritsTransform', 0 )
        cmds.setAttr( upTwistDict['twist_curve']+'.inheritsTransform', 0 )

        for mp in cmds.listRelatives( lowTwistDict['motionPaths_group'] ) + cmds.listRelatives( upTwistDict['motionPaths_group'] ):
            cmds.setAttr( mp+'.inheritsTransform', 0 )

        if isLeg: cmds.setAttr( limbStartCtrl.control+'.v', 0 ) # hides first control of the leg

        # parenting everything under one group
        cmds.parent( limbStartCtrlGrp, limbEndCtrlGrp, pvCtrlGrp, systemGrp ) # ctrls
        hideGrp = cmds.group( joint1, startNonRoll['main_grp'], ssGrp, lockGrp, crvJntA1, crvJntD1Grp, lowTwistDict['twist_curve'], upTwistDict['twist_curve'], avgGrp, lowTwistDict['motionPaths_group'], upTwistDict['motionPaths_group'], upTwistDict['joints_group'], lowTwistDict['joints_group'], name=systemGrp.replace('_grp', '_hide_grp'), parent=systemGrp )
        cmds.setAttr( hideGrp+'.v', 0 )

        cmds.parentConstraint( limbStartCtrl.control, hideGrp, mo=True )

        # lock and hide attributes
        cmds.setAttr( limbStartCtrl.control + '.sx', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbStartCtrl.control + '.sy', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbStartCtrl.control + '.sz', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbStartCtrl.control + '.visibility', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.rx', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.ry', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.rz', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.sx', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.sy', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.sz', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( pvCtrl.control + '.visibility', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbEndCtrl.control + '.visibility', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbEndCtrl.control + '.sx', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbEndCtrl.control + '.sy', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( limbEndCtrl.control + '.sz', lock=True, keyable=False, channelBox=False )


    returnDic = { 'ikHandle'   : ikHandle,
                  'jointList'  : [ joint1, joint2, joint3, joint4 ],
                  'poleVector' : pvCtrl,
                  'poleVector_grp' : pvCtrlGrp,
                  'start_ctrl' : limbStartCtrl.control,
                  'end_ctrl'   : limbEndCtrl.control,
                  'end_ctrl_grp'   : limbEndCtrlGrp,
                  'skinJoints_group' : [ upTwistDict['joints_group'], lowTwistDict['joints_group'] ],
                  'limbSystem_grp'   : systemGrp,
                  'stretch_positions': [ ssStartPos, ssEndPos ]
                }
    return returnDic
    

def test():
    cmds.select( clear=True )
    # arms
    mel.eval('joint -p 1 0 0 -n lf_arm1; joint -p 6 0 -0.1 -n lf_arm2; joint -e -zso -oj xyz -sao yup lf_arm1; joint -p 10 0 0 -n lf_arm3; joint -e -zso -oj xyz -sao yup lf_arm2; joint -p 12 0 0 -n lf_arm4; joint -e -zso -oj xyz -sao yup lf_arm3;')
    build( startJoint='lf_arm1', middleJoint='lf_arm2', endJoint='lf_arm3', extraJoint='lf_arm4', side='lf', name='arm', twistJointCount=6 )
    mel.eval('mirrorJoint -mirrorYZ -mirrorBehavior -searchReplace "lf_" "rt_" lf_arm1;')
    build( startJoint='rt_arm1', middleJoint='rt_arm2', endJoint='rt_arm3', extraJoint='rt_arm4', side='rt', name='arm', twistJointCount=6 )

    cmds.select( clear=True )
    # leg
    mel.eval('joint -p 1 6 0 -n lf_leg1; joint -p 1 3 0.1 -n lf_leg2; joint -p 1 0 0 -n lf_leg3; joint -p 1 -1 0 -n lf_leg4; joint -e -zso -oj xyz -sao yup lf_leg1; joint -e -zso -oj xyz -sao ydown lf_leg2; joint -e -oj xyz -sao yup -zso lf_leg3;')
    build( startJoint='lf_leg1', middleJoint='lf_leg2', endJoint='lf_leg3', extraJoint='lf_leg4', side='lf', name='leg', twistJointCount=6, isLeg=True )
    mel.eval('mirrorJoint -mirrorYZ -mirrorBehavior -searchReplace "lf_" "rt_" lf_leg1;')
    build( startJoint='rt_leg1', middleJoint='rt_leg2', endJoint='rt_leg3', extraJoint='rt_leg4', side='rt', name='leg', twistJointCount=6, isLeg=True )