import maya.cmds as cmds
from anomalia.core import common

from anomalia.core.utils import showDialog

def build( targ=None, mesh=None, side=None, rigPart=None, cleanUp=False ):
    '''
    creates a follicle at the closest point to targ on the surface of mesh
    
    '''
    if not targ or not mesh or not side or not rigPart:
        return showDialog( 'Argument Error', 'Please provide nodes for targ and mesh arguments and strings for side and rigPart arguments' )
    
    if cmds.nodeType(mesh) == 'transform':
        mesh = cmds.listRelatives(mesh, s=1)[0]
    
    targPos = cmds.xform( targ, q=1, ws=1, t=1 )
    pmm1 = cmds.createNode('pointMatrixMult')
    cmds.setAttr('%s.inPoint' % pmm1, targPos[0], targPos[1], targPos[2] )
    cmds.connectAttr('%s.worldInverseMatrix[0]' % mesh, '%s.inMatrix' % pmm1)
    targPos = cmds.getAttr('%s.output' % pmm1)[0]
    print targPos

    closestPoint = cmds.createNode('closestPointOnMesh')
    cmds.setAttr( '%s.inPosition' % closestPoint, targPos[0], targPos[1], targPos[2] )
    cmds.connectAttr( '%s.worldMesh[0]' % mesh, '%s.inMesh' % closestPoint )
    
    paramU = cmds.getAttr( '%s.result.parameterU' % closestPoint )
    paramV = cmds.getAttr( '%s.result.parameterV' % closestPoint )
    
    # Create follicle
    foll = cmds.createNode('follicle')
    follXform = cmds.listRelatives(foll, p=1)[0]
    follXform = cmds.rename(follXform, common.getName(node=follXform, side=side, rigPart=rigPart, function='rivet', nodeType='foll'))   
    follShape = '%sShape' % follXform
    
    cmds.connectAttr( '%s.outMesh' % mesh, '%s.inputMesh' % follShape )
    cmds.connectAttr( '%s.worldMatrix[0]' % mesh, '%s.inputWorldMatrix' % follShape )
    
    cmds.connectAttr( '%s.outRotate' % follShape, '%s.r' % follXform )
    cmds.connectAttr( '%s.outTranslate' % follShape, '%s.t' % follXform )
    
    cmds.setAttr( '%s.parameterU' % follShape, paramU )
    cmds.setAttr( '%s.parameterV' % follShape, paramV )
    
    cmds.setAttr( '%s.inheritsTransform' % follXform, 0 )
    
    # Create group at exact location of targ - this is the node to constrain to
    constGrp = cmds.group(empty=1)
    constGrp = cmds.rename(constGrp, common.getName(node=constGrp, side=side, rigPart=rigPart, function='rivetConst', nodeType='grp'))
    common.align(constGrp, follXform, translate=False )
    common.align(constGrp, targ, orient=False )
    cmds.parent(constGrp, follXform)
    
    cmds.delete( pmm1 )
    cmds.delete( closestPoint )
    
    return {'follicle':follXform, 'constGrp':constGrp}