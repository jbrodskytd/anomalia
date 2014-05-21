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
    cmds.connectAttr(pelvis_ctrl+".translate",placer_footCtrl_point[0]+".offset")

    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'ctrl' )    
    hipCtrlObj = controls.Control( side = common.getSide(leg_jnt1), rigPart = "hip", function = "autoHip", nodeType = "ctrl", size = .4, color = "yellow", aimAxis = "z" ) #cmds.circle(r=.3, n=name) #TODO: create proper controller, positioning
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


    pelvis_autoHip_parent = cmds.parentConstraint(pelvis_ctrl, hipGrp, mo = True)
    cmds.parentConstraint(hipCtrl, leg_jnt1, mo = True)


    placer_hipNull_point = cmds.pointConstraint(placer, placerFoot, hipNull, w=0.5, mo = False)

    pma = cmds.createNode("plusMinusAverage")
    
    cmds.addAttr(hipCtrl, at='float', ln='weight', dv=0.5, min=0, h=False, k=True)
    
    cmds.setAttr(pma + '.operation', 2)
    cmds.setAttr(pma + '.input1D[0]', 1)
    
    cmds.connectAttr(hipCtrl + '.weight', placer_hipNull_point[0] + '.' + placer[0] + 'W0')
    cmds.connectAttr(placer_hipNull_point[0] + '.' + placer[0] + 'W0', pma+ '.input1D[1]')
    cmds.connectAttr(pma+'.output1D', placer_hipNull_point[0] + '.' + placerFoot[0] + 'W1')

    
   
def test():
    createAutoHip("rt_leg_skin_jnt", "cn_cog_fk_ctrl", "lf_foot_ik_ctrl")
    
