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
    allCtrl = controls.Control( side = "cn", rigPart = "root", function = "all", nodeType = "ctrl", size = 5, color = "green", aimAxis ="y" )
    allCtrl.circleCtrl()
    cmds.parent(allCtrl.control, ctrlsGrp)
    
    offsetCtrl = controls.Control( side = "cn", rigPart = "root", function = "offset", nodeType = "ctrl", size = 4, color = "green", aimAxis ="y" )
    offsetCtrl.circleCtrl()
    cmds.parent(offsetCtrl.control, allCtrl.control)
    
    # constrain group - any other systems that need to be constrained to the root can make an aligned target and put it in here
    constGrp = cmds.group(empty=True)
    constGrp = cmds.rename(constGrp, common.getName(side='cn', rigPart='root', function='constrain', nodeType='grp'))
    cmds.parent( constGrp, offsetCtrl.control )
    
    # systems group - subsequent systems are parented into this group
    systemsGrp = cmds.group(empty=True)
    systemsGrp = cmds.rename(systemsGrp, common.getName(side='cn', rigPart='root', function='systems', nodeType='grp'))
    cmds.parent( systemsGrp, allGrp )
    
    # def joints group
    defJntsGrp = cmds.group(empty=True)
    defJntsGrp = cmds.rename(defJntsGrp, common.getName(side='cn', rigPart='root', function='defJnts', nodeType='grp'))
    cmds.parent( defJntsGrp, allGrp )
    
    # geo group
    geoGrp = cmds.group(empty=True)
    geoGrp = cmds.rename(geoGrp, common.getName(side='cn', rigPart='root', function='geo', nodeType='grp'))
    cmds.parent( geoGrp, allGrp )
    cmds.setAttr('%s.inheritsTransform' % geoGrp, False)
    
    # worldScaleAttr
    cmds.aliasAttr( 'world_scale', '%s.scaleY' % allGrp )
    cmds.connectAttr( '%s.scaleY' % allGrp, '%s.scaleX' % allGrp )
    cmds.connectAttr( '%s.scaleY' % allGrp, '%s.scaleZ' % allGrp )
    cmds.transformLimits( allGrp, enableScaleY=( 1, 0 ), scaleY=( 0.01, 1.0 ) )
    
    # alias visibility attr - this becomes the global control for the entire rig's visibility
    cmds.aliasAttr( 'rig_vis', '%s.visibility' % allGrp )
    
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

    
    