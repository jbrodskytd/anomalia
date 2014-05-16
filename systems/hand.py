import maya.cmds as cmds
import maya.OpenMaya as om
import math
from anomalia.core import common, controls

from anomalia.core.utils import showDialog

def build( root, fingerDict, side='rt', cleanUp=1 ):
    '''
    Builds an fk hand with extendable knuckles
    
    Args:
        root - node at the location of the wrist
        fingerDict - dictionary with keys for the name of each digit and values which are the root node for each digit:
            e.g. { 'thumb':'lf_thumb1_defJnt', 'index':'lf_index1_defJnt' }
            
            For each key in fingerDict a digit will be created with segments based on the number of child joints in the chain.
            
            Any joints with the same worldSpace location as their child will become 'extend' joints
    
    '''
    # Validate arguments
    if type(root) != type('hello') and type(root) != type(u'hello'):
        return showDialog( 'Argument Error', 'You must supply a root of type string or unicode' )
    
    if type(fingerDict) != type({}):
        return showDialog( 'Argument Error', "fingerDict must be supplied as a dictionary/nwith a key for the name of each digit and a root node as its value/n e.g.{ 'thumb':'lf_thumb1_defJnt', 'index':'lf_index1_defJnt' }")
    
    # Build and align root groups
    xformGrp = cmds.group(empty=1)
    xformGrp = cmds.rename(xformGrp, common.getName( node=xformGrp, side=side, rigPart='hand', function='xform', nodeType='grp'))
    common.align(node=xformGrp, target=root)
    
    rigGrp = cmds.duplicate(xformGrp)
    rigGrp = cmds.rename(rigGrp, common.getName( node=rigGrp, side=side, rigPart='hand', function='rig', nodeType='grp'))
    cmds.parent( rigGrp, xformGrp )
    
    # Root joint
    cmds.select(None)
    rootJnt = cmds.joint()
    rootJnt = cmds.rename(rootJnt, common.getName( node=rootJnt, side=side, rigPart='hand', function='root', nodeType='jnt'))
    common.align(rootJnt, xformGrp)
    cmds.parent(rootJnt, rigGrp)
    cmds.setAttr('%s.jointOrient' % rootJnt, 0, 0, 0 )
    
    # Build fingers
    for key in fingerDict.keys():
        fing = buildFinger( side=side, name=key, rootJnt=fingerDict[key], rootGrp=xformGrp, cleanUp=cleanUp )
        cmds.parent(fing['jnts'][0], rigGrp)
        
    # Cleanup
    if cleanUp:
        cmds.setAttr( '%s.visibility' % rigGrp, 0 )
        common.attrCtrl(nodeList=[rigGrp], attrList=['visibility'])
        
    return {'systemGrp':xformGrp}
        

def buildFinger( side, name, rootJnt, rootGrp, cleanUp ):
    # Get aim axis - this presumes the rootJnt is NOT an extend joint
    childJnt = cmds.listRelatives( rootJnt, c=1, type='joint' )[0]
    childPos = cmds.getAttr('%s.t' % childJnt)
    childPosAbs = [ math.fabs(value) for value in childPos[0] ]
    twistIndex = childPosAbs.index(max(childPosAbs))
    twistAxis = ['x', 'y', 'z'][ twistIndex ]
    
    # Determine whether the joints have a negative translation along the twist axis
    neg = 0
    if childPos[ twistIndex ] < 0.0:
        neg = 1
    
    # Duplicate joint chain
    dupJnts = cmds.duplicate( rootJnt, rc=1 )
    print dupJnts
    jnts=[]
    ctrls = []
    index=1
    for d in range(len(dupJnts)):
        if isExtendJnt(dupJnts[d]):
            j = cmds.rename(dupJnts[d], common.getName( node=dupJnts[d], side=side, rigPart='hand', function='%sExtend%s' % ( name, index ), nodeType='jnt'))
            grp = common.insertGroup( node=j )
            grp = cmds.rename( grp, j.replace('jnt', 'grp') )
            # Connect twistAxis translate to ctrl and ctrl rotatePivotTrnaslate back to ctrl.translate
            cmds.connectAttr('%s.t%s' % (ctrls[index-2], twistAxis), '%s.t%s' % ( j, twistAxis ) )
            rotPivTransUC = cmds.createNode('unitConversion')
            rotPivTransUC = cmds.rename(rotPivTransUC, common.getName( node=rotPivTransUC, side=side, rigPart='hand', function='%sNegTrans%s' % ( name, index ), nodeType='conv'))
            cmds.setAttr( '%s.conversionFactor' % rotPivTransUC, -1.0 )
            cmds.connectAttr( '%s.t' % ctrls[index-2], '%s.input' % rotPivTransUC )
            cmds.connectAttr( '%s.output' % rotPivTransUC, '%s.rotatePivotTranslate' % ctrls[index-2] )
        else:
            j = cmds.rename(dupJnts[d], common.getName( node=dupJnts[d], side=side, rigPart='hand', function='%s%s' % ( name, index ), nodeType='jnt'))
            
            if d < (len(dupJnts)-1):
                # Build control
                c = controls.Control( side=side, rigPart="hand", function='%s%s' % ( name, index ), nodeType="ctrl", size=0.15, color=side, aimAxis=twistAxis )
                c.pinCtrl()
                grp = common.insertGroup( node=c.control )
                grp = cmds.rename( grp, c.control.replace('ctrl', 'grp') )
                common.align( node=grp, target=j )
                if d == 0:
                    cmds.parent( grp, rootGrp )
                    cmds.parent( j, rootGrp )
                else:
                    cmds.parent(grp, ctrls[index-2])
                    cmds.pointConstraint(j, grp)
                ctrls.append(c.control)
                
                # Connect joint rotations to ctrl rotations
                cmds.connectAttr('%s.r' % c.control, '%s.r' % j)
                
            index = index + 1
            
        jnts.append( j )
        
        if cleanUp:
            lockAxes = ['t%s' % axis for axis in ['x', 'y', 'z'] if not axis == twistAxis]
            for c in ctrls:
                common.attrCtrl(nodeList=[c], attrList=lockAxes + ['sx', 'sy', 'sz', 'visibility'])
        
    return {'jnts':jnts, 'ctrls':ctrls}
        
            

def isExtendJnt( jnt, tolerance=0.01 ):
    '''
    returns true if the joint's first child joint is in the same world location (within tolerance)
    
    '''
    children = cmds.listRelatives( jnt, c=1, type='joint' )
    if children:
        childJnt = children[0]
    else:
        return False # Must be the end of the digit   
    
    jntPos = cmds.xform( jnt, ws=1, t=1, q=1 )
    childPos = cmds.xform( childJnt, ws=1, t=1, q=1 )
    
    jntVec = om.MVector(jntPos[0], jntPos[1], jntPos[2])
    childVec = om.MVector(childPos[0], childPos[1], childPos[2])
    newVec = jntVec - childVec
    if newVec.length() <= tolerance:
        return True
    else:
        return False
    
