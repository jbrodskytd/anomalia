import maya.cmds as cmds
from anomalia.core import common, controls

def createAutoHip(leg_jnt1, pelvis_ctrl, foot_ctrl, cleanUp=True):
    # input validation
    
    if(leg_jnt1 == ''):
        print "Please define leg_jnt1"
        return
    if(pelvis_ctrl == ''):
        print "Please define pelvis_ctrl"
        return
    if(foot_ctrl == ''):
        print "Please define foot_ctrl"
        return
        
    if type(leg_jnt1) is list:
        leg_jnt1 = pelvis_ctrl[0]
        
    if type(pelvis_ctrl) is list:
        pelvis_ctrl = pelvis_ctrl[0]
        
    if type(foot_ctrl) is list:
        foot_ctrl = pelvis_ctrl[0]

    #load matrixNodes plugin if it isn't already loaded (if maya2012 decomposeMatrix) 
	if '2012' in cmds.about(version=True):
         cmds.loadPlugin('decomposeMatrix.mll', qt = True)
    else:
         cmds.loadPlugin('matrixNodes.mll', qt = True)

    #locator under pelvis on position of upper leg
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), common.getRigPart(leg_jnt1), 'constraint', 'loc' )    
    placer = cmds.spaceLocator(n=name) 
    cmds.parent(placer[0], leg_jnt1)
    cmds.setAttr(placer[0]+".translate",0,0,0)
    cmds.setAttr(placer[0]+".rotate",0,0,0)
    cmds.parent(placer[0], pelvis_ctrl)
    cmds.setAttr(placer[0]+".scale",1,1,1)

    #duplicate locator for bind position for keeping world transforms of hip in case of rotation and translation of pelvis
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'bind', 'loc' )
    #hipBindPlacer = cmds.duplicate(placer, n=name)
    placer_WT = cmds.createNode('decomposeMatrix')
    cmds.connectAttr(placer[0] + '.worldMatrix', placer_WT + '.inputMatrix')

    #pelvisNull is zeroed pelvis transform group under pelvis
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'bind', 'grp' )
    pelvisNull = cmds.group(n=name, em=True)
    cmds.parent(pelvisNull, pelvis_ctrl)
    cmds.setAttr(pelvisNull+".translate",0,0,0)
    cmds.setAttr(pelvisNull+".rotate",0,0,0)
    cmds.setAttr(pelvisNull+".inheritsTransform",0)
    
    #setAttr "lf_hip_bind_grp.inheritsTransform" 0;
    
    
    #pelvisPosGrp is group with transform of pelvis under foot
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'footCtrl', 'constraint', 'grp' )
    
    pelvisPosGrp = cmds.group(n=name, em = True)
    cmds.parent(pelvisPosGrp, pelvis_ctrl)
    cmds.setAttr(pelvisPosGrp+".translate",0,0,0)
    cmds.pointConstraint(foot_ctrl,pelvisPosGrp, mo=True)
    #cmds.parent(pelvisPosGrp, foot_ctrl)
    pelvisNullPoint = cmds.pointConstraint(pelvisPosGrp, pelvisNull)
    
    placer_footCtrl_point = cmds.pointConstraint(pelvisPosGrp, pelvisNull, w=1, mo = False) #pelvisPosGrp -> pelvisNull < placerFoot
    
    #placerFoot is locator under pelvisPosGrp with trasform of upper leg and constrained to foot #--------
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), "footCtrl", 'constraint', 'loc' )    
    placerFoot = cmds.spaceLocator(n=name)
    cmds.parent(placerFoot[0], pelvisNull)
    cmds.setAttr(placerFoot[0]+".translate",0,0,0)
    #cmds.parent(placerFoot[0], pelvisNull) #----------
    
    #creating hip controler
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'ctrl' )
    if common.getSide(leg_jnt1) == 'rt':
        col = 'red'
    else:
        col = 'blue'

    flip = True
    if common.getSide(leg_jnt1) == 'lf': flip = False

    hipCtrlObj = controls.Control( side = common.getSide(leg_jnt1), rigPart = "hip", function = "autoHip", nodeType = "ctrl", size = .4, color = col, aimAxis = "z", flip=flip ) #cmds.circle(r=.3, n=name) #TODO: create proper controller, positioning
    hipCtrlObj.controlName = name
    hipCtrlObj.pinCtrl()
    
    hipCtrl = name
    '''
    shape = cmds.listRelatives(hipCtrl)
    
    cmds.select(clear = True)
    cmds.select(shape[0] + ".cv[:]")
    cmds.select(shape[1] + ".cv[:]", add = True)
        
    if common.getSide(leg_jnt1) == 'lf':
        cmds.rotate(0,0,-90, r=1)
    else:
        cmds.rotate(0,0,90, r=1)
    
    cmds.select(clear = True)
    '''
    # relative point separating pelvis parent transformations
    pelvisParent = cmds.listRelatives('cn_spine_hips_ctrl', p = True)
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'pelvisParentTransform', 'autoHip', 'grp' )
    pelvisParentTransform = cmds.group(n=name, em = True)
    cmds.parent(pelvisParentTransform, pelvis_ctrl)
    cmds.setAttr(pelvisParentTransform + '.translate', 0,0,0)
    cmds.setAttr(pelvisParentTransform + '.rotate', 0,0,0)
    cmds.setAttr(pelvisParentTransform + '.scale', 1,1,1)
    cmds.parent(pelvisParentTransform, pelvisParent[0])
    
    pelvisParentTransform_WT = cmds.createNode('decomposeMatrix')
    cmds.connectAttr(pelvisParentTransform + '.worldMatrix', pelvisParentTransform_WT + '.inputMatrix')
    
    
    #creating hipCTRL hiearchy hipGrp < hipNull < hipCtrl
    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'null' )
    hipNull = cmds.group(n=name, em = True)

    name = '%s_%s_%s_%s' % ( common.getSide(leg_jnt1), 'hip', 'autoHip', 'grp' )
    hipGrp = cmds.group(n=name, em = True)

    cmds.parent(hipCtrl, hipNull)
    cmds.parent(hipNull, hipGrp)
    
    #moving hipGrp to upper leg
    cmds.setAttr(hipCtrl+".translate", 0,0,0)
    tempPos = cmds.xform(leg_jnt1,q=1,ws=1, rp=1, a=1)
    cmds.setAttr(hipGrp+".translate", tempPos[0], tempPos[1], tempPos[2])

    #pelvis_ctrl -> hipGrp
    pelvis_autoHip_parent = cmds.parentConstraint(pelvis_ctrl, hipGrp, mo = False)
    
    #parent constraint of hipNull translating between footPlacer and pelvisPlacer
    placer_hipNull_parentX = cmds.parentConstraint(placer, placerFoot, hipNull, w=0.5, mo = False, st = ['y','z'], sr = ['x','y','z'])
    placer_hipNull_parentY = cmds.parentConstraint(placer, placerFoot, hipNull, w=0.5, mo = False, st = ['x','z'], sr = ['x','y','z'])
    placer_hipNull_parentZ = cmds.parentConstraint(placer, placerFoot, hipNull, w=0.5, mo = False, st = ['x','y'], sr = ['x','y','z'])
    
    # hipCtrl-> upperLeg
    cmds.pointConstraint(hipCtrl, leg_jnt1, mo = False)
    cmds.orientConstraint(hipCtrl, leg_jnt1, mo = True)
    
    #inverseWeight
    pmaInverseWeight = cmds.createNode("plusMinusAverage")
    
    cmds.setAttr(pmaInverseWeight + '.operation', 2)
    cmds.setAttr(pmaInverseWeight + '.input3D[0]', 1,1,1, type="float3")
    
    #scale compensation
    mp = cmds.createNode("multiplyDivide")
    cmds.setAttr(mp + ".operation", 2)
    
    cmds.connectAttr(placer_WT + '.outputTranslate', mp + '.input1')
    cmds.connectAttr(placer_WT + '.outputScale', mp + '.input2')
    #cmds.setAttr(mp + '.input2',2,2,2, type = 'float3')
    
    pelvis_WT = cmds.createNode('decomposeMatrix')
    cmds.connectAttr(pelvis_ctrl + '.worldMatrix', pelvis_WT + '.inputMatrix')
    
    #Transform offset to move hip full with pelvis, but weighted with foot
    pma2 = cmds.createNode("plusMinusAverage")
    cmds.setAttr(pma2 + '.operation', 2)
    cmds.connectAttr(mp + '.output', pma2 + '.input3D[0]')
    #ws = cmds.xform(pelvisNull, q=True, t=True, ws=True)
    ws = cmds.xform(placer, q=True, t=True, ws=True)
    #ws2 = cmds.xform(pelvis_ctrl, q=True, t=True, ws=True)
    #cmds.setAttr(pma2 + '.input3D[1]', ws1[0]-ws2[0],ws1[1]-ws2[1],ws1[2]-ws2[2])
    #cmds.setAttr(pma2 + '.input3D[1]', ws[0],ws[1],ws[2])
    cmds.connectAttr(pelvisParentTransform_WT + '.outputTranslate', pma2 + '.input3D[1]')
    #cmds.connectAttr(mp + '.output', pma2 + '.input3D[2]')
    #cmds.connectAttr(pelvis_WT + '.outputTranslate', pma2 + '.input3D[2]')
    
    
    
    '''
    cmds.connectAttr(pelvis_ctrl + '.translate', pma2 + '.input3D[0]')
    cmds.setAttr(pma2 + '.input3D[1].input3Dx', cmds.getAttr(pelvis_ctrl + '.translateX'))
    cmds.setAttr(pma2 + '.input3D[1].input3Dy', cmds.getAttr(pelvis_ctrl + '.translateY'))
    cmds.setAttr(pma2 + '.input3D[1].input3Dz', cmds.getAttr(pelvis_ctrl + '.translateZ'))
    '''
    
    
    
    #inverse weight to second weight
    cmds.connectAttr(placer_hipNull_parentX[0] + '.' + placerFoot[0] + 'W1', pmaInverseWeight+ '.input3D[1].input3Dx')
    cmds.connectAttr(placer_hipNull_parentY[0] + '.' + placerFoot[0] + 'W1', pmaInverseWeight+ '.input3D[1].input3Dy')
    cmds.connectAttr(placer_hipNull_parentZ[0] + '.' + placerFoot[0] + 'W1', pmaInverseWeight+ '.input3D[1].input3Dz')
    cmds.connectAttr(pmaInverseWeight+'.output3D.output3Dx', placer_hipNull_parentX[0] + '.' + placer[0] + 'W0')
    cmds.connectAttr(pmaInverseWeight+'.output3D.output3Dy', placer_hipNull_parentY[0] + '.' + placer[0] + 'W0')
    cmds.connectAttr(pmaInverseWeight+'.output3D.output3Dz', placer_hipNull_parentZ[0] + '.' + placer[0] + 'W0')
    
    
    
    
    #add weight attributes and connecting it
    cmds.addAttr(hipCtrl, at='float', ln='weightX', dv=0.3, min=0, h=False, k=True)
    cmds.addAttr(hipCtrl, at='float', ln='weightY', dv=0.3, min=0, h=False, k=True)
    cmds.addAttr(hipCtrl, at='float', ln='weightZ', dv=0.3, min=0, h=False, k=True)
    
    cmds.connectAttr(hipCtrl + '.weightX', placer_hipNull_parentX[0] + '.' + placerFoot[0] + 'W1')
    cmds.connectAttr(hipCtrl + '.weightY', placer_hipNull_parentY[0] + '.' + placerFoot[0] + 'W1')
    cmds.connectAttr(hipCtrl + '.weightZ', placer_hipNull_parentZ[0] + '.' + placerFoot[0] + 'W1')

    #making it really offset by pelvis
    cmds.connectAttr(pma2+".output3D",placer_footCtrl_point[0]+".offset")

    if cleanUp:
        hideList = [ placer[0], placerFoot[0] ]
        for obj in hideList:
            cmds.setAttr( obj+'.v', 0 )

        cmds.setAttr( hipCtrl + '.sx', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( hipCtrl + '.sy', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( hipCtrl + '.sz', lock=True, keyable=False, channelBox=False )
        cmds.setAttr( hipCtrl + '.visibility', lock=True, keyable=False, channelBox=False )

    returnDic = {
        'autoHipSystem_grp' : hipGrp,
        'placer': placer
        }

    return returnDic
   
def test():
    createAutoHip("lf_leg_skin_jnt", "cn_cog_fk_ctrl", "lf_foot_ik_ctrl")

