import maya.cmds as cmds
from anomalia.core import common, controls

def createAutoHip(leg_jnt1, pelvis_ctrl, foot_ctrl):
    if(leg_jnt1 == ''):
        print "Please define leg_jnt1"
        return
    if(pelvis_ctrl == ''):
        print "Please define pelvis_ctrl"
        return
    if(foot_ctrl == ''):
        print "Please define foot_ctrl"
        return
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), common.getRigPart(leg_jnt1), 'constraint', 'loc' )    
    placer = cmds.spaceLocator(n=name) 
    cmds.parent(placer[0], leg_jnt1)
    cmds.setAttr(placer[0]+".translate",0,0,0)
    cmds.parent(placer[0], pelvis_ctrl)
    
   
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'footCtrl', 'constraint', 'grp' )
    
    placerFootGrp = cmds.group(n=name, em = True)
    cmds.parent(placerFootGrp, foot_ctrl)
    cmds.setAttr(placerFootGrp+".translate",0,0,0)
    cmds.parent(placerFootGrp, pelvis_ctrl)
   
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), "footCtrl", 'constraint', 'loc' )    
    placerFoot = cmds.spaceLocator(n=name)
    cmds.parent(placerFoot[0], leg_jnt1)
    cmds.setAttr(placerFoot[0]+".translate",0,0,0)
    cmds.parent(placerFoot[0], placerFootGrp)
    
    placer_footCtrl_point = cmds.pointConstraint(foot_ctrl, placerFootGrp, w=1, mo = False)
    

    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'ctrl' )
    if common.getSide(leg_jnt1) == 'rt':
        col = 'red'
    else:
        col = 'blue'
    hipCtrlObj = controls.Control( side = common.getSide(leg_jnt1), rigPart = "hip", function = "autoHip", nodeType = "ctrl", size = .4, color = col, aimAxis = "z" ) #cmds.circle(r=.3, n=name) #TODO: create proper controller, positioning
    hipCtrlObj.controlName = name
    hipCtrlObj.pinCtrl()
    
    hipCtrl = name
    shape = cmds.listRelatives(hipCtrl)
    cmds.select(clear = True)
    cmds.select(shape[0] + ".cv[:]")
    cmds.select(shape[1] + ".cv[:]", add = True)
    
    if common.getSide(leg_jnt1) == 'lf':
        cmds.rotate(0,0,-90, r=1)
    else:
        cmds.rotate(0,0,90, r=1)
    
    cmds.select(clear = True)
    
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'null' )
    hipNull = cmds.group(n=name, em = True)

    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'grp' )
    hipGrp = cmds.group(n=name, em = True)

    cmds.parent(hipCtrl, hipNull)
    cmds.parent(hipNull, hipGrp)

    cmds.setAttr(hipCtrl+".translate", 0,0,0)
    tempPos = cmds.xform(leg_jnt1,q=1,ws=1, rp=1, a=1)
    cmds.setAttr(hipGrp+".translate", tempPos[0], tempPos[1], tempPos[2])


    pelvis_autoHip_parent = cmds.parentConstraint(pelvis_ctrl, hipGrp, mo = False)
    cmds.parentConstraint(hipCtrl, leg_jnt1, mo = False)


    placer_hipNull_parentX = cmds.parentConstraint(placer, placerFoot, hipNull, w=0.5, mo = False, st = ['y','z'], sr = ['x','y','z'])
    placer_hipNull_parentY = cmds.parentConstraint(placer, placerFoot, hipNull, w=0.5, mo = False, st = ['x','z'], sr = ['x','y','z'])
    placer_hipNull_parentZ = cmds.parentConstraint(placer, placerFoot, hipNull, w=0.5, mo = False, st = ['x','y'], sr = ['x','y','z'])

    pma = cmds.createNode("plusMinusAverage")
    
    cmds.setAttr(pma + '.operation', 2)
    cmds.setAttr(pma + '.input3D[0]', 1,1,1, type="float3")
    
    pma2 = cmds.createNode("plusMinusAverage")
    cmds.setAttr(pma2 + '.operation', 2)
    cmds.connectAttr(pelvis_ctrl + '.translate', pma2 + '.input3D[0]')
    cmds.setAttr(pma2 + '.input3D[1].input3Dx', cmds.getAttr(pelvis_ctrl + '.translateX'))
    cmds.setAttr(pma2 + '.input3D[1].input3Dy', cmds.getAttr(pelvis_ctrl + '.translateY'))
    cmds.setAttr(pma2 + '.input3D[1].input3Dz', cmds.getAttr(pelvis_ctrl + '.translateZ'))
    
    mp = cmds.createNode("multiplyDivide")
    cmds.setAttr(mp + ".operation", 1)
    
    cmds.addAttr(hipCtrl, at='float', ln='weightX', dv=0.5, min=0, h=False, k=True)
    cmds.addAttr(hipCtrl, at='float', ln='weightY', dv=0.5, min=0, h=False, k=True)
    cmds.addAttr(hipCtrl, at='float', ln='weightZ', dv=0.5, min=0, h=False, k=True)
    
    
    cmds.connectAttr(pma+'.output3D.output3Dx', placer_hipNull_parentX[0] + '.' + placer[0] + 'W0')
    cmds.connectAttr(pma+'.output3D.output3Dy', placer_hipNull_parentY[0] + '.' + placer[0] + 'W0')
    cmds.connectAttr(pma+'.output3D.output3Dz', placer_hipNull_parentZ[0] + '.' + placer[0] + 'W0')

    cmds.connectAttr(pma2 + '.output3D', mp + '.input1')
    cmds.setAttr(mp + '.input2',2,2,2, type = 'float3')
    cmds.connectAttr(mp+".output",placer_footCtrl_point[0]+".offset")
    
    cmds.connectAttr(placer_hipNull_parentX[0] + '.' + placerFoot[0] + 'W1', pma+ '.input3D[1].input3Dx')
    cmds.connectAttr(placer_hipNull_parentY[0] + '.' + placerFoot[0] + 'W1', pma+ '.input3D[1].input3Dy')
    cmds.connectAttr(placer_hipNull_parentZ[0] + '.' + placerFoot[0] + 'W1', pma+ '.input3D[1].input3Dz')
    
    cmds.connectAttr(hipCtrl + '.weightX', placer_hipNull_parentX[0] + '.' + placerFoot[0] + 'W1')
    cmds.connectAttr(hipCtrl + '.weightY', placer_hipNull_parentY[0] + '.' + placerFoot[0] + 'W1')
    cmds.connectAttr(hipCtrl + '.weightZ', placer_hipNull_parentZ[0] + '.' + placerFoot[0] + 'W1')

    
   
def test():
    createAutoHip("lf_leg_skin_jnt", "cn_cog_fk_ctrl", "lf_foot_ik_ctrl")

