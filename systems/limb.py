#ToDo: fk rotations are mirrored to grab controls on both arms and pose them together / will have negative translate values along the twisting axis on one side
#      stretch rig
#      skin / bendy attrs 
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

    # auto color controls using the 'side' argument
    myColor  = 'green'
    if   side == 'lf': myColor = 'blue'
    elif side == 'rt': myColor = 'red'

    ikHandle, effector = cmds.ikHandle( startJoint=joint1, endEffector=joint3, solver='ikRPsolver', n=side+'_'+name+'_ikHandle' )

    pvCtrl   = controls.Control( side=side, rigPart=name, function='poleVec', nodeType="ctrl", size=1, color="green", aimAxis="twistAxis" )
    pvCtrl.cubeCtrl()

    # snaps the poleVector control to the middle joint
    common.align( node=pvCtrl.control, target=joint2, orient=False )
    pvCtrlGrp = common.insertGroup( node=pvCtrl.control )
    cmds.poleVectorConstraint( pvCtrl.control, ikHandle )

    # and then tries to auto-position the poleVector (TESTED ONLY IN PERFECT YZ and XZ PLANES!)
    startJointR = cmds.getAttr( joint1+'.r' )
    cmds.setAttr( pvCtrlGrp+'.tz', -5 )

    if startJointR[0] != cmds.getAttr( joint1+'.r' )[0]:
        # if the code enters this condition, it's most likely a leg joint, with the poleVector to the front
        cmds.setAttr( pvCtrlGrp+'.tz', 5 )

    # creation of the start control (shoulder or hips offset)
    limbStartCtrl = controls.Control( side=side, rigPart='limb', function=name+'_start', nodeType='ctrl', size=1, color=myColor, aimAxis='z' )
    limbStartCtrl.pinCtrl()
    common.align( node=limbStartCtrl.control, target=joint1, orient=False )
    limbStartCtrlGrp = common.insertGroup( node=limbStartCtrl.control )

    # creation of the end control (hand or foot)
    limbEndCtrl = controls.Control( side=side, rigPart='limb', function=name+'_end', nodeType='ctrl', size=1, color=myColor, aimAxis='x' )
    limbEndCtrl.cubeCtrl()
    common.align( node=limbEndCtrl.control, target=joint3, orient=False )
    limbEndCtrlGrp = common.insertGroup( node=limbEndCtrl.control )

    cmds.pointConstraint( limbEndCtrl.control, ikHandle )

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


    # create the twistSections
    upTwistDict = twistSection.build( side=side, name='up_'+name, startPos=joint1, endPos=joint2, jointCount=twistJointCount, worldUpVector='z', worldUpObject=startNonRollStart, twistReader=startNonRollLoc )
    lowTwistDict = twistSection.build( side=side, name='lw_'+name, startPos=joint2, endPos=joint3, jointCount=twistJointCount, worldUpVector='z', worldUpObject=upNonRollStart, twistReader=lowNonRollLoc )
    #temp
    cmds.skinCluster( joint2, lowTwistDict['twist_curve'] )
    cmds.skinCluster( joint1, upTwistDict['twist_curve'] )


    # extra jnt follow orientation of endCtrl
    cmds.orientConstraint( limbEndCtrl.control, joint3, mo=True )


    # constrains entire limb to startCtrl
    cmds.orientConstraint( limbStartCtrl.control, startNonRollGrp, mo=True )
    cmds.parentConstraint( limbStartCtrl.control, systemGrp, mo=True )

    returnDic = { 'ikHandle'   : ikHandle,
                  'jointList'  : [joint1, joint2, joint3],
                  'poleVector' : pvCtrl,
                  'poleVectorGroup' : pvCtrlGrp
                }
    return returnDic

def test():
    cmds.select( clear=True )
    # arm
    mel.eval('joint -p 0 0 0; joint -p 5 0 -1; joint -e -zso -oj xyz -sao yup joint1; joint -p 9 0 0; joint -e -zso -oj xyz -sao yup joint2; joint -p 11 0 0; joint -e -zso -oj xyz -sao yup joint3;')
    # leg
    #mel.eval('joint -p 0 6 0 ; joint -p 0 3 1; joint -e -zso -oj xyz -sao yup joint1; joint -p 0 0 0; joint -e -zso -oj xyz -sao yup joint2; joint -p 0 -1 2; joint -e -zso -oj xyz -sao yup joint3;')


    build( startJoint='joint1', middleJoint='joint2', endJoint='joint3', extraJoint='joint4', side='lf', name='arm', twistJointCount=6 )