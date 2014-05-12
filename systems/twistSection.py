from maya import mel, cmds
from anomalia.core.common import pointsAlongVector

def build( side=None, name=None, startPos=None, endPos=None, jointCount=None, worldUpVector=None, worldUpObject=None, twistReader=None ):
    '''
    Creates a simple motionPath spline rig
    
    >> Required Inputs:
      side (string)
      name (string)
      startPos (string : name of a transform)
      endPos   (string : name of a transform)
      jointCount    (int)
      worldUpVector (string : ['x', 'y', 'z'])
      worldUpObject (string : name of a transform)
      twistReader   (string : name of a transform)

    << Outputs:
        A Dictionary with:
            {
            'twist_curve'       : curve that carries everything, this is skinned by other modules
            'motionPaths_group' : a group containing all the motionPath groups of this twistSection
            'joints_group'      : a group containing all the (skin) joints of this twistSection
            }
    '''

    # Skipping popup, this will always be called from a script
    if not side or not name or not startPos or not endPos or not jointCount or not worldUpVector or not worldUpObject or not twistReader:
        print 'twistSection: Error! Must supply all arguments.'
        return

    axisDict = {'x':[1,0,0], 'y':[0,1,0], 'z':[0,0,1]}

    # get all points using the excellent function pointsAlongVector
    endPoint = cmds.xform( endPos, translation=True, query=True, ws=True )
    allPoints = pointsAlongVector( start=startPos, end=endPoint, divisions=3 )
    
    crv = cmds.curve( d=3, p=(allPoints[0], allPoints[1], allPoints[2], allPoints[3]), k=(0, 0, 0, 1, 1, 1), n=side+'_'+name+'_crv' )

    # iterates over the jointCount to create the motionPath groups, mp nodes and joints
    uStep = 1.0/(jointCount-1)
    mpGrp  = cmds.group( empty=True, n=side+'_'+name+'_mp_grp' )
    jntGrp = cmds.group( empty=True, n=side+'_'+name+'_jnt_grp' )
    for i in range( 1, jointCount+1 ):
        mpNode = cmds.createNode( 'motionPath', n=side+'_'+name+'_'+str(i)+'_mp' )
        cmds.connectAttr( crv+'.worldSpace[0]', mpNode+'.geometryPath' )

        mpiGrp = cmds.group( empty=True, n=side+'_'+name+'_'+str(i)+'_mp_grp' )
        for ax in ['x', 'y', 'z']:
            cmds.connectAttr( mpNode+'.'+ax+'Coordinate', mpiGrp+'.t'+ax )
            cmds.connectAttr( mpNode+'.r'+ax, mpiGrp+'.r'+ax )

        cmds.setAttr( mpNode+'.uValue', uStep*(i-1) )
        cmds.setAttr( mpNode+'.fractionMode', 1 )
        cmds.setAttr( mpNode+'.follow', 1 )
        cmds.setAttr( mpNode+'.worldUpType', 2 )
        cmds.setAttr( mpNode+'.worldUpVector', *axisDict[worldUpVector] )
        cmds.setAttr( mpNode+'.frontAxis', 0 ) # x
        if   worldUpVector == 'x': cmds.setAttr( mpNode+'.upAxis', 0 )
        elif worldUpVector == 'y': cmds.setAttr( mpNode+'.upAxis', 1 )
        elif worldUpVector == 'z': cmds.setAttr( mpNode+'.upAxis', 2 )
        if side == 'rt':
            cmds.setAttr( mpNode+'.inverseFront', 1 )
            cmds.setAttr( mpNode+'.inverseUp', 1 )
        
        cmds.connectAttr( worldUpObject+'.worldMatrix[0]', mpNode+'.worldUpMatrix' )

        # skip rotation for first joint
        if i != 1:
            ucNode = cmds.createNode( 'unitConversion', n=side+'_'+name+'_'+str(i)+'' ) # this guy handles the twist distribution
            cmds.setAttr( ucNode+'.conversionFactor', uStep*(i-1) )
            cmds.connectAttr( twistReader+'.rx', ucNode+'.input' )
            cmds.connectAttr( ucNode+'.output', mpNode+'.frontTwist' )

        jnt = cmds.createNode( 'joint', n=side+'_'+name+'_'+str(i)+'_jnt' )
        cmds.setAttr( jnt+'.displayLocalAxis', 1 )
        cmds.refresh() # weird, but avoids cycles in Maya2013 at least
        cmds.parentConstraint( mpiGrp, jnt )
        cmds.parent( jnt, jntGrp )
        cmds.parent( mpiGrp, mpGrp )

    # not sure about this, following Duncan's prototype lead
    # it tries to parent the skinJoints group to a group called 'skin_grp' in the scene, if it exists
    skinGrp = 'skin_grp'
    if cmds.objExists( skinGrp ):
        cmds.parent( jntGrp, skinGrp )

    # returning as dictionary so it's friendlier/more readable wherever this is going to be used
    returnDic = { 'twist_curve':crv,
                  'motionPaths_group':mpGrp,
                  'joints_group':jntGrp      }

    return returnDic


def test():
    name = 'test'

    startLoc = cmds.spaceLocator( n=name+'_startLoc' )
    endLoc   = cmds.spaceLocator( n=name+'_endLoc' )
    cmds.setAttr( endLoc[0]+'.tx', 5 )

    print build( side='lf', name=name, startPos=startLoc, endPos=endLoc, jointCount=6, worldUpVector='z', worldUpObject=startLoc[0], twistReader=endLoc[0] )