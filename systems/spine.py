import maya.cmds as cmds
from anomalia.core import common, controls
import collections
from anomalia.core.utils import showDialog

def build ( hips=None, chest=None, head=None, numSpineJoints=6, numHeadJoints=6, twistAxis='x', bendAxis='y', cleanUp=True ):
    '''
    function to create the fk spine with head isolation...
    
    requires 3 objects to be selected or supplied - hips, chest, head
    
    hips: location of the first spine joint - this joint doesn't inherit any chest rotation
    chest: where the chest ctrl is placed. It's rotation is distributed from the second spine joint up to this point
    head: location of the last spine joint

    '''
    
    axisDict = {'x':[1,0,0], 'y':[0,1,0], 'z':[0,0,1]}
    
    # Validate that the correct arguments have been supplied
    if not hips or not chest or not head:
        # If hips, chest anf head aren't explicitly supplied, check for a valid selection to use 
        sel = cmds.ls(sl=1, type='transform')
        if len( sel ) == 3:
            hips, chest, head = sel[0], sel[1], sel[2]
        else:
            return showDialog( 'Argument Error', 'Cannot determine hips, chest and head points' )
        
    # Get positions of spine and head joints
    spineLocs = common.pointsAlongVector( start = hips, end = chest, divisions = numSpineJoints-1) 
    headLocs = common.pointsAlongVector( start = chest, end = head, divisions = numHeadJoints-1)
    spineLocs.extend(headLocs[1:])
    
    xformGrp = cmds.group(empty=1)
    xformGrp = cmds.rename(xformGrp, common.getName( node=xformGrp, side='cn', rigPart='spine', function='xform', nodeType='grp'))
    common.align(node=xformGrp, target=hips)
    aimConst = cmds.aimConstraint(chest, xformGrp, aimVector=axisDict[twistAxis], upVector=axisDict[bendAxis], worldUpVector=[1,0,0] )
    cmds.delete( aimConst )

            
    # Build control objects
    hipCtrl = controls.Control( side = "cn", rigPart = "spine", function = "hips", nodeType = "ctrl", size = 1.25, color = "green", aimAxis = "twistAxis" )
    hipCtrl.circleCtrl()
    hipGrp = common.insertGroup( node=hipCtrl.control )
    hipGrp = cmds.rename( hipGrp, hipCtrl.control.replace('ctrl', 'grp') )
    common.align( node=hipGrp, target=xformGrp )
    cmds.parent(hipGrp, xformGrp)
    
    chestCtrl = controls.Control( side = "cn", rigPart = "spine", function = "chest", nodeType = "ctrl", size = 1.25, color = "green", aimAxis = "twistAxis" )
    chestCtrl.circleCtrl()
    chestGrp = common.insertGroup( node=chestCtrl.control )
    chestGrp = cmds.rename( chestGrp, chestCtrl.control.replace('ctrl', 'grp') )
    common.align( node=chestGrp, orient=False, target=chest )
    common.align( node=chestGrp, translate=False, target=xformGrp )
    cmds.parent(chestGrp, hipCtrl.control)
    
    headCtrl = controls.Control( side = "cn", rigPart = "spine", function = "head", nodeType = "ctrl", size = 1.25, color = "green", aimAxis = "twistAxis" )
    headCtrl.crownCtrl()
    headGrp = common.insertGroup( node=headCtrl.control )
    headGrp = cmds.rename( headGrp, headCtrl.control.replace('ctrl', 'grp') )
    common.align( node=headGrp, target=head, orient=False )
    common.align( node=headGrp, target=xformGrp, translate=False )
    cmds.parent(headGrp, xformGrp )
    
    # Add attr to head ctrl for isolating head rotation
    cmds.addAttr( headCtrl.control, longName='isolate_rotation', at='double', keyable=True, min=0, max=1 )
        
    # Build driven groups
    spineGrps = []
    for i in range(len(spineLocs)):
        g = cmds.group(empty=1)
        g = cmds.rename(g, common.getName( node=g, side='cn', rigPart='spine', function='driven%s' % str(i+1), nodeType='grp'))
        spineGrps.append( g )
        cmds.setAttr('%s.t' % g, spineLocs[i][0], spineLocs[i][1], spineLocs[i][2])
        common.align( node=g, target=xformGrp, translate=False )
        if i > 0:
            cmds.parent( g, spineGrps[i-1])
        else:
            cmds.parent( g, xformGrp )
            cmds.parentConstraint( hipCtrl.control, g )
            
    # Build joints
    spineJoints = []
    for i in range(len(spineLocs)):
        cmds.select( spineGrps[i] )
        j = cmds.joint()
        common.align( node=j, target=xformGrp, translate=False )
        cmds.setAttr('%s.jointOrient' % j, )
        j = cmds.rename(j, common.getName( node=j, side='cn', rigPart='spine', function='driven%s' % str(i+1), nodeType='jnt'))
        spineJoints.append( j )
        cmds.setAttr('%s.displayLocalAxis' % j, 1)
        
    
    # set rotation orders
    leanAxis = [axis for axis in ['x', 'y', 'z'] if not axis in [twistAxis, bendAxis]][0]
    rotateOrder = '%s%s%s' % (twistAxis, leanAxis, bendAxis )
    rotateOrderDict={'xyz':0, 'yzx':1, 'zxy':2, 'xzy':3, 'yxz':4, 'zyx':5}
    
    for i in [hipGrp, hipCtrl.control, chestGrp, chestCtrl.control, headGrp, headCtrl.control] + spineGrps + spineJoints:
        cmds.setAttr( '%s.rotateOrder' % i, rotateOrderDict[rotateOrder])
    
    # connect driven groups and joints below chest to chest control rotations
    spineBendUC = cmds.createNode('unitConversion')
    spineBendUC = cmds.rename(spineBendUC, common.getName( node=spineBendUC, side='cn', rigPart='spine', function='bend', nodeType='conv'))
    cmds.connectAttr( '%s.r%s' % (chestCtrl.control, bendAxis), '%s.input' % spineBendUC)
    cmds.setAttr( '%s.conversionFactor' % spineBendUC, 1.0 / (numSpineJoints-1) )
    
    spineLeanUC = cmds.createNode('unitConversion')
    spineLeanUC = cmds.rename(spineLeanUC, common.getName( node=spineLeanUC, side='cn', rigPart='spine', function='lean', nodeType='conv'))
    cmds.connectAttr( '%s.r%s' % (chestCtrl.control, leanAxis), '%s.input' % spineLeanUC)
    cmds.setAttr( '%s.conversionFactor' % spineLeanUC, 1.0 / (numSpineJoints-1))
    
    for grp in spineGrps[1:numSpineJoints]:
        cmds.connectAttr( '%s.output' % spineBendUC, '%s.r%s' % (grp, bendAxis))
        cmds.connectAttr( '%s.output' % spineLeanUC, '%s.r%s' % (grp, leanAxis))
    
    for i in range(numSpineJoints-1):
        spineTwistUC = cmds.createNode('unitConversion')
        spineTwistUC = cmds.rename(spineTwistUC, common.getName( node=spineTwistUC, side='cn', rigPart='spine', function='twist%s' % i, nodeType='conv'))
        cmds.connectAttr( '%s.r%s' % (chestCtrl.control, twistAxis), '%s.input' % spineTwistUC)
        cmds.setAttr( '%s.conversionFactor' % spineTwistUC, 1.0 / (numSpineJoints-1) * (i + 1))
        cmds.connectAttr( '%s.output' % spineTwistUC, '%s.r%s' % (spineJoints[i+1], twistAxis))
        
    
    # connect driven groups above chest to reverse chest control rotations + hips control rotations
    hipRotUC = cmds.createNode('unitConversion')
    hipRotUC = cmds.rename(hipRotUC, common.getName( node=hipRotUC, side='cn', rigPart='spine', function='hipRotate', nodeType='conv'))
    cmds.setAttr( '%s.conversionFactor' % hipRotUC, -1 )
    cmds.connectAttr('%s.r' % hipCtrl.control, '%s.input' % hipRotUC)
    hipRotMD = cmds.createNode('multiplyDivide')
    hipRotMD = cmds.rename(hipRotMD, common.getName( node=hipRotMD, side='cn', rigPart='spine', function='hipRotate', nodeType='multDiv'))
    cmds.connectAttr( '%s.output' % hipRotUC, '%s.input1' % hipRotMD )
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.input2X' % hipRotMD)
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.input2Y' % hipRotMD)
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.input2Z' % hipRotMD)
    
    chestRotUC = cmds.createNode('unitConversion')
    chestRotUC = cmds.rename(chestRotUC, common.getName( node=chestRotUC, side='cn', rigPart='spine', function='chestRotate', nodeType='conv'))
    cmds.setAttr( '%s.conversionFactor' % chestRotUC, -1 )
    cmds.connectAttr('%s.r' % chestCtrl.control, '%s.input' % chestRotUC)
    chestRotMD = cmds.createNode('multiplyDivide')
    chestRotMD = cmds.rename(chestRotMD, common.getName( node=chestRotMD, side='cn', rigPart='spine', function='chestRotate', nodeType='multDiv'))
    cmds.connectAttr( '%s.output' % chestRotUC, '%s.input1' % chestRotMD )
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.input2X' % chestRotMD)
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.input2Y' % chestRotMD)
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.input2Z' % chestRotMD)
    
    headRotUC = cmds.createNode('unitConversion')
    headRotUC = cmds.rename(headRotUC, common.getName( node=headRotUC, side='cn', rigPart='spine', function='headRotate', nodeType='conv'))
    cmds.setAttr( '%s.conversionFactor' % headRotUC, 1 )
    cmds.connectAttr('%s.r' % headCtrl.control, '%s.input' % headRotUC)
    
    # negative hip and chest rotation are added to head rotation. The negative values are piped through a multiplier to blend the head isolation off and on 
    spineRotNegPMA = cmds.createNode('plusMinusAverage')
    spineRotNegPMA = cmds.rename(spineRotNegPMA, common.getName( node=spineRotNegPMA, side='cn', rigPart='spine', function='rotateNeg', nodeType='pma'))
    cmds.connectAttr('%s.output' % hipRotMD, '%s.input3D[0]' % spineRotNegPMA)
    cmds.connectAttr('%s.output' % chestRotMD, '%s.input3D[1]' % spineRotNegPMA)
    cmds.connectAttr('%s.output' % headRotUC, '%s.input3D[2]' % spineRotNegPMA)
    
    spineBendNegUC = cmds.createNode('unitConversion')
    spineBendNegUC = cmds.rename(spineBendNegUC, common.getName( node=spineBendNegUC, side='cn', rigPart='spine', function='bendNeg', nodeType='conv'))
    cmds.connectAttr( '%s.output3D%s' % (spineRotNegPMA, bendAxis), '%s.input' % spineBendNegUC)
    cmds.setAttr( '%s.conversionFactor' % spineBendNegUC, 1.0 / (numHeadJoints-2) )
    
    spineLeanNegUC = cmds.createNode('unitConversion')
    spineLeanNegUC = cmds.rename(spineLeanNegUC, common.getName( node=spineLeanNegUC, side='cn', rigPart='spine', function='leanNeg', nodeType='conv'))
    cmds.connectAttr( '%s.output3D%s' % (spineRotNegPMA, leanAxis), '%s.input' % spineLeanNegUC)
    cmds.setAttr( '%s.conversionFactor' % spineLeanNegUC, 1.0 / (numHeadJoints-2) )
    
    for grp in spineGrps[numSpineJoints:-1]:
        cmds.connectAttr( '%s.output' % spineBendNegUC, '%s.r%s' % (grp, bendAxis))
        cmds.connectAttr( '%s.output' % spineLeanNegUC, '%s.r%s' % (grp, leanAxis))
        
    
    # Direct output from chest control. If head isolation is off. All twist joints above it recieve 100% of its twisting
    chestTwistDirectUC = cmds.createNode('unitConversion')
    chestTwistDirectUC = cmds.rename(chestTwistDirectUC, common.getName( node=chestTwistDirectUC, side='cn', rigPart='spine', function='chestTwist', nodeType='conv'))
    cmds.connectAttr('%s.r%s' % (chestCtrl.control, twistAxis), '%s.input' % chestTwistDirectUC)
    cmds.setAttr( '%s.conversionFactor' % chestTwistDirectUC, 1.0 )
    
    for i in range(numSpineJoints+1, len(spineJoints)):
        # gradually negate hip twist from chest up
        hipTwistUC = cmds.createNode('unitConversion')
        hipTwistUC = cmds.rename(hipTwistUC, common.getName( node=hipTwistUC, side='cn', rigPart='spine', function='hipTwist%s' % i, nodeType='conv'))
        cmds.connectAttr('%s.r%s' % (hipCtrl.control, twistAxis), '%s.input' % hipTwistUC)
        cmds.setAttr( '%s.conversionFactor' % hipTwistUC, -1.0 / (numHeadJoints-2) * (i - numSpineJoints))
        
        # gradually negate chest twist from chest up
        chestTwistUC = cmds.createNode('unitConversion')
        chestTwistUC = cmds.rename(chestTwistUC, common.getName( node=chestTwistUC, side='cn', rigPart='spine', function='chestTwist%s' % i, nodeType='conv'))
        cmds.connectAttr('%s.r%s' % (chestCtrl.control, twistAxis), '%s.input' % chestTwistUC)
        cmds.setAttr( '%s.conversionFactor' % chestTwistUC, 1.0 / (numHeadJoints-2) * (len(spineJoints) - (i+1)))
        
        # sum hip and chest negation
        spineTwistNegPMA = cmds.createNode('plusMinusAverage')
        spineTwistNegPMA = cmds.rename(spineTwistNegPMA, common.getName( node=spineTwistNegPMA, side='cn', rigPart='spine', function='twistNeg%s' % i, nodeType='pma'))
        cmds.connectAttr('%s.output' % hipTwistUC, '%s.input1D[0]' % spineTwistNegPMA)
        cmds.connectAttr('%s.output' % chestTwistUC, '%s.input1D[1]' % spineTwistNegPMA)
        
        # Distribute head twist down to chest
        spineTwistUC = cmds.createNode('unitConversion')
        spineTwistUC = cmds.rename(spineTwistUC, common.getName( node=spineTwistUC, side='cn', rigPart='spine', function='twist%s' % i, nodeType='conv'))
        cmds.connectAttr( '%s.r%s' % (headCtrl.control, twistAxis), '%s.input' % spineTwistUC)
        cmds.setAttr( '%s.conversionFactor' % spineTwistUC, 1.0 / (numHeadJoints-2) * (i - numSpineJoints))
        
        # Blend between hip and chest negation (head isolation on) and full inheritance of chest twist (head isolation off)
        spineTwistNegBC = cmds.createNode('blendColors')
        spineTwistNegBC = cmds.rename(spineTwistNegBC, common.getName( node=spineTwistNegBC, side='cn', rigPart='spine', function='twistNeg%s' % i, nodeType='bc'))
        cmds.connectAttr('%s.output1D' % spineTwistNegPMA, '%s.color1R' % spineTwistNegBC)
        cmds.connectAttr('%s.output' % chestTwistDirectUC, '%s.color2R' % spineTwistNegBC)
        cmds.connectAttr('%s.isolate_rotation' % headCtrl.control, '%s.blender' % spineTwistNegBC)
        
        # Sum blended negation twist and head twist
        spineTwistPMA = cmds.createNode('plusMinusAverage')
        spineTwistPMA = cmds.rename(spineTwistPMA, common.getName( node=spineTwistPMA, side='cn', rigPart='spine', function='twistResult%s' % i, nodeType='pma'))
        cmds.connectAttr('%s.outputR' % spineTwistNegBC, '%s.input1D[0]' % spineTwistPMA)
        cmds.connectAttr('%s.output' % spineTwistUC, '%s.input1D[1]' % spineTwistPMA)
        
        # Force unit conversion to 1
        spineTwistResultUC = cmds.createNode('unitConversion')
        spineTwistResultUC = cmds.rename(spineTwistResultUC, common.getName( node=spineTwistResultUC, side='cn', rigPart='spine', function='twistResult%s' % i, nodeType='conv'))
        cmds.connectAttr( '%s.output1D' % spineTwistPMA, '%s.input' % spineTwistResultUC )
        cmds.setAttr( '%s.conversionFactor' % spineTwistResultUC, 1.0 )

        cmds.connectAttr('%s.output' % spineTwistResultUC, '%s.r%s' % (spineJoints[i-1], twistAxis))
        
    # Orient contstrain last head joint to second last head joint
    orientConst = cmds.orientConstraint(spineJoints[-2], spineJoints[-1])
    # Point constrain chest ctrl grp to its spine group
    pointConst = cmds.pointConstraint( spineGrps[numSpineJoints-1], chestGrp)
    # Point constrain head ctrl grp to last spine group
    pointConst = cmds.pointConstraint( spineGrps[-1], headGrp)
    # Add orient constraint to headCtrl group - weighted between root noXformGrp and last spine grp - weight controlled by isolation attr
    orientConst = cmds.orientConstraint( xformGrp, chestCtrl.control, headGrp)[0]
    isolateRev = cmds.createNode('reverse')
    isolateRev = cmds.rename(isolateRev, common.getName( node=isolateRev, side='cn', rigPart='spine', function='headIsolate', nodeType='rev'))
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.inputX' % isolateRev )
    cmds.connectAttr( '%s.isolate_rotation' % headCtrl.control, '%s.%sW0' % (orientConst, xformGrp), f=1 )
    cmds.connectAttr( '%s.outputX' % isolateRev, '%s.%sW1' % (orientConst, chestCtrl.control), f=1 )
    cmds.setAttr( '%s.interpType' % orientConst, 2 )
    
    # Clean up attributes and objects that need to be hidden / locked
    if cleanUp:
        cmds.setAttr( '%s.visibility' % spineGrps[0], 0 )
        common.attrCtrl(nodeList=[spineGrps[1]], attrList=['visibility'])
        common.attrCtrl(nodeList=[hipCtrl.control], attrList=['sx', 'sy', 'sz', 'visibility'])
        common.attrCtrl(nodeList=[chestCtrl.control, headCtrl.control], attrList=['tx', 'ty', 'tz', 'sx', 'sy', 'sz', 'visibility'])
        
    returnDict = collections.defaultdict(list)
    returnDict['xformGrp'].append( xformGrp )
    returnDict['hipCtrl'].append( hipCtrl.control )
    returnDict['chestCtrl'].append( chestCtrl.control )
    returnDict['headCtrl'].append( headCtrl.control )
    
    return returnDict
    
    
def test():
    name = 'test'

    hipsLoc = cmds.spaceLocator( n=name+'_hipsLoc' )[0]
    chestLoc   = cmds.spaceLocator( n=name+'_chestLoc' )[0]
    cmds.setAttr( chestLoc+'.ty', 5 )
    headLoc   = cmds.spaceLocator( n=name+'_headLoc' )[0]
    cmds.setAttr( headLoc+'.ty', 10 )

    cmds.select([hipsLoc, chestLoc, headLoc])
    
    build(cleanUp=0)
    