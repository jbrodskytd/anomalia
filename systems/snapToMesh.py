import maya.cmds as cmds

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
    cmds.connectAttr(str(inMesh)+'.worldMesh[0]',str(cpomNode)+'.inMesh',f=True)
    cmds.connectAttr(str(inMesh)+'.worldMatrix[0]',str(cpomNode)+'.inputMatrix',f=True)
    
    cmds.connectAttr(str(ctrlObj)+'.translate', str(cpomNode)+'.inPosition',f=True)
    cmds.connectAttr(str(cpomNode)+'.result.position',str(outObj)+'.translate',f=True)

def snapToMeshTest():
    inMeshT = cmds.polySphere()
    inMesh = cmds.listRelatives(inMeshT[0], fullPath = True, shapes = True)
    print inMesh
    outObj = cmds.polySphere(radius = 0.1)
    ctrl = cmds.circle(r=0.5);
    cmds.move(1,0,0,ctrl)
    snapToMesh(inMesh = inMesh[0], outObj = outObj[0], ctrlObj=ctrl[0])
