import maya.cmds as cmds
import anomalia.core.common
def snapToMesh(inMesh, outObj, ctrlObj):
    if(inMesh == ''):
        print "Please define inMesh"
        return
    if(outObj == ''):
        print "Please define outObj"
        return
    if(ctrlObj == ''):
        print "Please define ctrlObj"
        return
    
    cpomNode = cmds.createNode("closestPointOnMesh")
    name = '%s_%s_%s_%s' % ( anomalia.core.common.getSide(ctrlObj), anomalia.core.common.getRigPart(ctrlObj), anomalia.core.common.getFunction(ctrlObj), 'loc' )
    ctrlObjLoc = cmds.spaceLocator(n = name)
    cmds.parent(ctrlObjLoc, ctrlObj)
    cmds.setAttr(ctrlObjLoc[0]+'.translate', 0,0,0)
    cmds.connectAttr(str(inMesh)+'.worldMesh[0]',str(cpomNode)+'.inMesh',f=True)
    cmds.connectAttr(str(inMesh)+'.worldMatrix[0]',str(cpomNode)+'.inputMatrix',f=True)
    
    cmds.connectAttr(str(ctrlObjLoc[0])+'.worldPosition', str(cpomNode)+'.inPosition',f=True)
    cmds.connectAttr(str(cpomNode)+'.result.position',str(outObj)+'.translate',f=True)
    return ctrlObjLoc

def snapToMeshTest():
    inMeshT = cmds.polySphere()
    inMesh = cmds.listRelatives(inMeshT[0], fullPath = True, shapes = True)
    print inMesh
    outObj = cmds.polySphere(radius = 0.1)
    ctrl = cmds.circle(r=0.5, n="cn_arm_fk_ctrl");
    cmds.move(1,0,0,ctrl)
    snapToMesh(inMesh = inMesh[0], outObj = outObj[0], ctrlObj=ctrl[0])