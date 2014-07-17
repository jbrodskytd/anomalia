import maya.cmds as cmds
from anomalia.core import common, controls

from anomalia.core.utils import showDialog

import collections

def build():
    '''
    Builds top level group and control structure for the rig
    '''
    #global group
    allGrp = cmds.group(empty=True)
    allGrp = cmds.rename(allGrp, common.getName(side='cn', rigPart='root', function='world', nodeType='grp'))
    
    # root group
    rootGrp = cmds.group(empty=True)
    rootGrp = cmds.rename(rootGrp, common.getName(side='cn', rigPart='root', function='root', nodeType='grp'))
    cmds.parent( rootGrp, allGrp )
        
    # ctrls group - root ctrls go in here
    ctrlsGrp = cmds.group(empty=True)
    ctrlsGrp = cmds.rename(ctrlsGrp, common.getName(side='cn', rigPart='root', function='controls', nodeType='grp'))
    cmds.parent( ctrlsGrp, rootGrp )
    
    # root ctrls
    allCtrl = controls.Control( side = "cn", rigPart = "root", function = "all", nodeType = "ctrl", size = 4, color = "green", aimAxis ="y" )
    allCtrl.circleCtrl()
    cmds.connectAttr( allCtrl.control + '.visibility', allGrp + '.visibility' )
    cmds.transformLimits( allCtrl.control, sx=(0.01, 1), sy=(0.01, 1), sz=(0.01, 1), esx=(True,False), esy=(True,False), esz=(True,False) )
    cmds.parent(allCtrl.control, ctrlsGrp)
    
    offsetCtrl = controls.Control( side = "cn", rigPart = "root", function = "offset", nodeType = "ctrl", size = 3, color = "green", aimAxis ="y" )
    offsetCtrl.circleCtrl()
    cmds.transformLimits( offsetCtrl.control, sx=(0.01, 1), sy=(0.01, 1), sz=(0.01, 1), esx=(True,False), esy=(True,False), esz=(True,False) )
    cmds.parent(offsetCtrl.control, allCtrl.control)

    # visibility attributes on offset control for rig, joints, geo
    cmds.setAttr( offsetCtrl.control + '.visibility', channelBox = False, keyable = False )
    cmds.addAttr( offsetCtrl.control, longName='jointsVisibility', attributeType='bool', hidden=False, dv=True )
    cmds.addAttr( offsetCtrl.control, longName='geoVisibility', attributeType='bool', keyable=True, dv=True )
    cmds.addAttr( offsetCtrl.control, longName='rigVisibility', attributeType='bool', keyable=True, dv=True )

    # constrain group - any other systems that need to be constrained to the root can make an aligned target and put it in here
    constGrp = cmds.group(empty=True)
    constGrp = cmds.rename(constGrp, common.getName(side='cn', rigPart='root', function='constrain', nodeType='grp'))
    cmds.parent( constGrp, offsetCtrl.control )
    
    # systems group - subsequent systems are parented into this group
    systemsGrp = cmds.group(empty=True)
    systemsGrp = cmds.rename(systemsGrp, common.getName(side='cn', rigPart='root', function='systems', nodeType='grp'))
    cmds.connectAttr( offsetCtrl.control + '.rigVisibility', systemsGrp + '.visibility' )
    cmds.parent( systemsGrp, allGrp )
    
    # def joints group
    defJntsGrp = cmds.group(empty=True)
    defJntsGrp = cmds.rename(defJntsGrp, common.getName(side='cn', rigPart='root', function='defJnts', nodeType='grp'))
    cmds.connectAttr( offsetCtrl.control + '.jointsVisibility', defJntsGrp + '.visibility' )
    cmds.parent( defJntsGrp, allGrp )
    
    # geo group
    geoGrp = cmds.group(empty=True)
    geoGrp = cmds.rename(geoGrp, common.getName(side='cn', rigPart='root', function='geo', nodeType='grp'))
    cmds.connectAttr( offsetCtrl.control + '.geoVisibility', geoGrp + '.visibility' )
    cmds.parent( geoGrp, allGrp )
    cmds.setAttr('%s.inheritsTransform' % geoGrp, False)

    # Return a dictionary with useful stuff
    returnDict = collections.defaultdict(list)
    returnDict['allGrp'].append( allGrp )
    returnDict['rootGrp'].append( rootGrp )
    returnDict['ctrlsGrp'].append( ctrlsGrp )
    returnDict['constGrp'].append( constGrp )
    returnDict['allCtrl'].append( allCtrl )
    returnDict['offsetCtrl'].append( offsetCtrl )
    returnDict['systemsGrp'].append( systemsGrp )
    returnDict['defJntsGrp'].append( defJntsGrp )
    returnDict['geoGrp'].append( geoGrp )
    returnDict['worldScale'].append( '%s.world_scale' % allGrp )
    
    return returnDict

    
    