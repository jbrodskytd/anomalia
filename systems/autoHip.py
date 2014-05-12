import maya.cmds as cmds
import anomalia.core.common as cmn

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
    name = '%s_%s_%s_%s' % ( cmn.getSide(leg_jnt1), cmn.getRigPart(leg_jnt1), 'constraint', 'loc' )    
#    name = '%s_%s_%s_%s' % ( cmn.getSide(leg_jnt1), cmn.getRigPart(leg_jnt1), cmn.getFunction(leg_jnt1), 'loc' )    
    placer = cmds.spaceLocator(n=name) 
    cmds.parent(placer[0], pelvis_ctrl)
    cmds.setAttr(placer[0]+".translate",0,0,0)
    name = '%s_%s_%s_%s' % ( cmn.getSide(leg_jnt1), 'hip', 'autoHip', 'ctrl' )    
    hipCtrl = cmds.circle(r=.3, n=name) #TODO: create proper controller, positioning
    name = '%s_%s_%s_%s' % ( cmn.getSide(leg_jnt1), 'hip', 'autoHip', 'null' )
    hipNull = cmds.group(n=name, em = True)
    name = '%s_%s_%s_%s' % ( cmn.getSide(leg_jnt1), 'hip', 'autoHip', 'grp' )
    hipGrp = cmds.group(n=name, em = True)
    print hipGrp
    print hipNull
    cmds.parent(hipCtrl, hipNull)
    cmds.parent(hipNull, hipGrp)

    cmds.setAttr(hipCtrl[0]+".translate", 0,0,0)
    tempPos = cmds.xform(leg_jnt1,q=1,ws=1, rp=1, a=1)
    cmds.setAttr(hipGrp+".translate", tempPos[0], tempPos[1], tempPos[2])

    #parent constraint pelvis_ctrl hipGrp
    pelvis_autoHip_parent = cmds.parentConstraint(pelvis_ctrl, hipGrp, mo = True)

    #point cnstr placer() foot_ctrl() hipNull
    placer_hipNull_point = cmds.pointConstraint(placer, foot_ctrl, hipNull, w=0.5, mo = True)
    #cmds.pointConstraint(foot_ctrl, hipNull, w=0.5)
    pma = cmds.createNode("plusMinusAverage")

    mp = cmds.createNode("multiplyDivide")
    cmds.setAttr(mp + ".input1X", 1)
    print placer_hipNull_point
    print mp
    
#    cmds.setAttr(mp + ".input1Y", 0)
    cmds.connectAttr(placer_hipNull_point[0] + "." + placer[0] + "W0", mp+".input1Y")

    cmds.setAttr(mp + ".input1Z", 0)
    cmds.setAttr(mp + ".operation", 1)

    cmds.connectAttr(mp+".outputX", pma+".input1D[0]")
    cmds.connectAttr(mp+".outputY", pma+".input1D[1]")

    cmds.setAttr(pma + ".operation", 2)
    
    cmds.connectAttr(pma+".output1D", placer_hipNull_point[0] + "." + foot_ctrl + "W1")
    #return    
    
    cmds.parentConstraint(hipCtrl, leg_jnt1, mo = True)
    #set placer weight 0.5
    #multiply divide node - multiply
    #connect placerWeight -> input1.Y
    #input1.X, input2.XYZ = 1; input1.Z = 0
    #plus minus average - subtract
    #MD.outputX,Y -> subtract.input1D[0],[1]
    #subtract.output1D -> foot_ctrl weight
    
    #parent constraint hipCtrl leg_jnt1
    
    
def test():
    createAutoHip("lf_leg_skin_jnt", "cn_cog_fk_ctrl", "lf_foot_ik_ctrl")
