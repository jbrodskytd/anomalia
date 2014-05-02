from maya import mel, cmds


def build( side, name, startPos, endPos, jointCount ):
    point1 = cmds.xform( startPos, query=True, worldSpace=True, translation=True )
    point4 = cmds.xform( endPos, query=True, worldSpace=True, translation=True )
    point2 = [(point1[0]+point4[0])*0.33, (point1[1]+point4[1])*0.33, (point1[2]+point4[2])*0.33]
    point3 = [(point1[0]+point4[0])*0.66, (point1[1]+point4[1])*0.66, (point1[2]+point4[2])*0.66]
    
    crv = cmds.curve( d=3, p=(point1, point2, point3, point4), k=(0, 0, 0, 1, 1, 1), n=side+'_'+name+'_crv' )

    uStep = 1.0/(jointCount-1)
    for i in range( 1, jointCount+1 ):
        mpNode = cmds.createNode( 'motionPath', n=side+'_'+name+str(i)+'_mp' )
        cmds.connectAttr( crv+'.worldSpace[0]', mpNode+'.geometryPath' )
        adlX = cmds.createNode( 'addDoubleLinear', n=side+'_'+name+'X_adl')
        adlY = cmds.createNode( 'addDoubleLinear', n=side+'_'+name+'Y_adl')
        adlZ = cmds.createNode( 'addDoubleLinear', n=side+'_'+name+'Z_adl')
        cmds.connectAttr( mpNode+'.xCoordinate', adlX+'.input2' )
        cmds.connectAttr( mpNode+'.yCoordinate', adlY+'.input2' )
        cmds.connectAttr( mpNode+'.zCoordinate', adlZ+'.input2' )

        mpGrp = cmds.group( empty=True, n=side+'_'+name+str(i)+'_mp_grp' )
        cmds.connectAttr( mpGrp+'.transMinusRotatePivot.transMinusRotatePivotX', adlX+'.input1' )
        cmds.connectAttr( mpGrp+'.transMinusRotatePivot.transMinusRotatePivotY', adlY+'.input1' )
        cmds.connectAttr( mpGrp+'.transMinusRotatePivot.transMinusRotatePivotZ', adlZ+'.input1' )

        cmds.connectAttr( adlX+'.output', mpGrp+'.tx' )
        cmds.connectAttr( adlY+'.output', mpGrp+'.ty' )
        cmds.connectAttr( adlZ+'.output', mpGrp+'.tz' )

        cmds.setAttr( mpNode+'.uValue', uStep*(i-1) )
        cmds.setAttr( mpNode+'.fractionMode', 1 )

        jnt = cmds.createNode( 'joint', n=side+'_'+name+str(i)+'_jnt' )
        cmds.refresh()
        cmds.parentConstraint( mpGrp, jnt )


def test():
    name = 'test'

    startLoc = cmds.spaceLocator( n=name+'_startLoc' )
    endLoc   = cmds.spaceLocator( n=name+'_endLoc' )
    cmds.setAttr( endLoc[0]+'.tx', 5 )

    build( side='lf', name=name, startPos=startLoc, endPos=endLoc, jointCount=6 )