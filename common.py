# Module for generic centralised functions such as naming of objects / colour coding of controls etc...
# Imports
import maya.cmds as cmds



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
    sel = cmds.ls( sl=1 )
    if not node and len( sel ) == 1:
        node = sel[0]
    
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
    
    
    
    