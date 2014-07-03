import maya.cmds as cmds
from anomalia.core import common

from anomalia.core.utils import showDialog

def build( joint=None, twistAxis='x', name='' ):
    '''
    Creates a duplicate of the specified joint which will remove the twist.
    Based on Victor Vinyal's nonroll setup
    Duplicates the joint and deletes all children apart from the first child joint ( there must at least a single child joint in the hierarchy )
    Creates an RP IKHandle with the pole vector set to zero
    Parents the pole vector to the original joint
    
    point constrains the nonRoll to the joint
    
    groups the nonRoll outside the hierarchy
    
    Also creates an 'info' locator which is parented to 'nonRoll' and aim constrained to 'nonRollEnd' using 'joint' as its up vector -
         - this is the node from which to read the twist value
    
    '''
        
    if not joint:
        if len(cmds.ls(sl=1, exactType='joint'))==1:
            joint = cmds.ls(sl=1, exactType='joint')[0]
        else:
            return showDialog( 'Argument Error', 'Please provide a joint' )
        
        
    prefix = '%s_%s' % (common.getSide(joint), name)
       
    # main group for nonRoll system
    main_grp = cmds.group( empty=1, n='%s_nonRoll_grp' % prefix )
    common.align( main_grp, joint )
    
    # Duplicate the joints and delete all but first child joint
    copies = cmds.duplicate( joint, name='%s_nonRoll_jnt' % prefix, rc=1 )
    nonRoll = copies[ 0 ]
    nonRollEnd = cmds.listRelatives( nonRoll, c=1, type='joint' )[ 0 ]
    deleteList = [ c for c in copies if not c in [ nonRoll, nonRollEnd ] ]
    if deleteList:
        cmds.delete( deleteList )        
    nonRollEnd = cmds.rename( nonRollEnd, '%s_nonRoll_end' % prefix )
    
    rad = cmds.getAttr( '%s.radius' % nonRoll ) * 1.5
    cmds.setAttr( '%s.radius' % nonRoll, rad )
    cmds.setAttr( '%s.radius' % nonRollEnd, rad )
    
    cmds.parent( nonRoll, main_grp )
    cmds.pointConstraint( joint, nonRoll )
    
    # build ikHandle
    ikHandle = cmds.ikHandle( sj=nonRoll, ee=nonRollEnd, n='%s_nonRoll_ikHandle' % prefix, sol='ikRPsolver' )[ 0 ]
    cmds.setAttr( '%s.poleVectorX' % ikHandle, 0 )
    cmds.setAttr( '%s.poleVectorY' % ikHandle, 0 )
    cmds.setAttr( '%s.poleVectorZ' % ikHandle, 0 )
    
    cmds.parent( ikHandle, joint )
    
    # build info locator
    info = cmds.spaceLocator( n='%s_nonRoll_info' % prefix )[ 0 ]
    common.align( info, joint )
    cmds.parent( info, nonRoll )
    
    if cmds.getAttr( '%s.t%s' % (nonRollEnd, twistAxis)) < 0:
        aimVec = ( -1, 0, 0 )
    else:
        aimVec = ( 1, 0, 0 )
    cmds.aimConstraint( nonRollEnd, info, aimVector=aimVec, wut='objectrotation', wuo=joint )
    
    returnDict = {
                  'main_grp':main_grp,
                  'nonRoll':nonRoll,
                  'nonRollEnd':nonRollEnd,
                  'ikHandle':ikHandle,
                  'info':info
                  }
    
    return returnDict
        
        