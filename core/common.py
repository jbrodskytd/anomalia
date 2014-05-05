# Module for generic centralised functions such as naming of objects / colour coding of controls etc...
# Imports
import maya.cmds as cmds
import maya.OpenMaya as om
from anomalia.core.utils import showDialog
import os



# Functions
def colorize( color=None, nodeList=[] ):
    '''
    takes a node ( or list or nodes ) and enables the drawing overrides.
    'Color' specifies either an integer for the required color or a string corresponding to a key in colorDict
    if nodelist is not supplied, will attempt to work on selected nodes.
    
    '''
    if not color:
        raise RuntimeError, 'color not specified. You must supply either a string or integer.'
    
    colorDict = {
                   'center':14, # green
                   'right':13, # red
                   'left':6, # blue
                   'red':13,
                   'blue':6,
                   'yellow':17,
                   'green':14,
                   'purple':9,
                  }
    
    if type( color ) == type( 'hello' ) or type( color ) == type( u'hello' ):
        color = colorDict[ color ]
    
    if not nodeList:
        nodeList = cmds.ls( sl=True )
    else:
        if type( nodeList ) == type( 'hello' ) or type( nodeList ) == type( u'hello' ):
            nodeList = [ nodeList ]
            
    for n in nodeList:
        cmds.setAttr('%s.overrideEnabled' % n, 1)
        cmds.setAttr('%s.overrideColor' % n, color)
        
        
######################################################################################################################################################

def getName( node=None, side=None, rigPart=None, function=None, nodeType=None):
    '''
    generates a node name based on the project convention
    if the 'nodeType' argument is not supplied, will search for a key in typeDict based on the exactType of the node.
    If no key is found, will use exactType verbatim.
    If node is not supplied, will attempt to work on selected node.
    
    typeDict needs filling up :-) - select a node and call cmds.ls(sl=1, showType=1)[1] to get the correct value
    
    '''
    if not node and len( cmds.ls( sl=1 ) ) == 1:
        node = cmds.ls( sl=1 )[0]
    
    if not node:
        raise RuntimeError, 'node not specified. You must either supply or select a single node.'
    
    if not side:
        raise RuntimeError, 'side not specified. You must supply a side.'
    
    if not rigPart:
        raise RuntimeError, 'rigPart not specified. You must supply a rigPart.'
    
    if not function:
        raise RuntimeError, 'function not specified. You must supply a function.'
    
    if not nodeType:
        nodeType = cmds.ls( node, showType=1 )[1]
    
    typeDict ={
                   'joint':'jnt',
                   'multiplyDivide':'multDiv'
               }
    
    sideDict ={
                   'left':'lf',
                   'right':'rt',
                   'center':'cn'
               }
    
    if side in sideDict.keys():
        side = sideDict[ side ]
        
    if nodeType in typeDict.keys():
        nodeType = typeDict[ nodeType ]
    
    newName = '%s_%s_%s_%s' % ( side, rigPart, function, nodeType )
    return newName

######################################################################################################################################################

def getCharDir( char ):
    '''
    returns the directory path to the supplied character
    '''
    return os.path.join( os.path.dirname( __file__ ), '..', 'characters', char)

######################################################################################################################################################
### Functions to return the side / rigPart / function / type of a node
def getSide(node):
    return node.split('_')[0]

def getRigPart(node):
    return node.split('_')[1]

def getFunction(node):
    return node.split('_')[2]

def getNodeType(node):
    return node.split('_')[3]


######################################################################################################################################################

def getNodesOfType(side=None, rigPart=None, function=None, nodeType=None, contains=None):
    '''
    returns list of nodes matching search criteria.
    
    '''
    
    allNodes = cmds.ls()
    returnNodes = []
    for node in allNodes:
        if side and getSide(node) != side:
            continue
        if rigPart and getRigPart(node) != rigPart:
            continue
        if function and getFunction(node) != function:
            continue
        if nodeType and getNodeType(node) != nodeType:
            continue
        if contains and node.find(contains) == -1:
            continue
        returnNodes.append(node)
        
    return returnNodes

######################################################################################################################################################

def pointsAlongVector( start='', end='', divisions=2 ):
    '''
    returns a list of points that lie on a line between start and end
    'divisions' specifies the number of points to return.
    divisions = 2 (default) will return the start and end points with one intermediate point: [ p1(start), p2, p3(end) ]
    
    start and end can be supplied as lists, tuples or nodes. If they are not supplied, and 2 scene nodes are selected
    will attempt to use their world space positions as start and end
        
    creates a vector by subtracting end from start
    stores length of vector
    normalizes vector
    multiplies normalized vector by length / divisions
    
    '''

    if type( start ) == type( 'hello' ) or type( start ) == type( u'hello' ):
        startPos = cmds.xform( str(start), translation=True, query=True, ws=True )
    else:
        startPos = start
        
    if type( end ) == type( 'hello' ) or type( end ) == type( u'hello' ):    
        endPos = cmds.xform( str(end), translation=True, query=True, ws=True )
    else:
        endPos = end
    
    if not startPos or not endPos and len( cmds.ls( sl=True ) ) == 2:
    
        startPos = cmds.xform( cmds.ls( sl=True )[0], translation=True, query=True, ws=True )
        endPos = cmds.xform( cmds.ls( sl=True )[1], translation=True, query=True, ws=True )
        
    if not startPos or not endPos:
        return showDialog( 'Argument Error', 'Cannot determine start and end points' )
        
    startVec = om.MVector(startPos[0], startPos[1], startPos[2])
    endVec = om.MVector(endPos[0], endPos[1], endPos[2])
    newVec = endVec - startVec
    segLength = newVec.length() / divisions
    newVec.normalize()
    
    points = []
    
    points.append(tuple(startPos))

    for p in range( 1, divisions ):
        point = newVec * segLength * p + startVec
        points.append((point.x, point.y, point.z))
        
    points.append(tuple(endPos))
    
    return points

######################################################################################################################################################

def insertGroup( node=None ):
    '''
    creates an empty group aligned to the selected node and inserts it into the hierarchy;
    
    '''
    if not node:
        node = cmds.ls(sl=1)[0]
    if node:
        parent = cmds.listRelatives(node, p=1)
        grp = cmds.group(empty=1, n='%s_grp' % node)
        align(node=grp, target=node)
        if parent:
            cmds.parent(grp, parent)
            
        cmds.parent(node, grp)
        
        return grp
    else:
        return showDialog( 'Argument Error', 'Cannot determine the node you wish to group' )
    
    
######################################################################################################################################################

def align( node=None, target=None, translate=True, orient=True ):
    '''
    sets the translation and / or orientation of node to match target
    
    '''
    
    # Validate that the correct arguments have been supplied
    if not node or not target:
        # If node and target aren't explicitly supplied, check for a valid selection to use 
        sel = cmds.ls(sl=1, type='transform')
        if len( sel ) == 2:
            node, target = sel[0], sel[1]
        else:
            return showDialog( 'Argument Error', 'Cannot determine nodes to align' )

    targetMatrix = cmds.xform( target, q=True, ws=1, matrix=True )
    nodeMatrix = cmds.xform( node, q=True, ws=1, matrix=True )
    
    if translate and orient:
        cmds.xform ( node, ws=1, matrix=targetMatrix )
    elif translate:
        # set row4 x y z to row4 of targetMatrix
        nodeMatrix[ 12:-1 ] = targetMatrix[ 12:-1 ]
        cmds.xform ( node, ws=1, matrix=nodeMatrix )
    elif orient:
        # set row4 x y z to row4 of nodeMatrix
        targetMatrix[ 12:-1 ] = nodeMatrix[ 12:-1 ]
        cmds.xform ( node, ws=1, matrix=targetMatrix )
        
######################################################################################################################################################
        
def attrCtrl(lock=True, keyable=False, channelBox=False, nodeList=[], attrList=[]):
    '''
    Takes a list of nodes and sets locks/unlocks shows/hides attributes in attrList
    
    '''
    if nodeList:
        for node in nodeList:
            if attrList:
                for attr in attrList:
                    if cmds.attributeQuery(attr, node=node, exists=True):
                        cmds.setAttr('%s.%s' % (node, attr), lock=lock, keyable=keyable, channelBox=channelBox)
            else:
                return showDialog( 'Argument Error', 'No nodes supplied for attribute control' )
    else:
        return showDialog( 'Argument Error', 'No nodes supplied for attribute control' )
