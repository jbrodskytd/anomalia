import maya.cmds as cmds
from anomalia.core import common, controls

def build( jntFoot = None, side = None, mesh = None ):
	print 'building a reverse foot!'
	
	# abort if no side is specified
	if side not in ['lf', 'left', 'lft', 'rt', 'right', 'rgt']:
		return pm.warning( 'No side specified.' )	
		
	# if footJnt is not specified try to use selection
	if jntFoot == None:
		if cmds.ls(sl=1)[0] == side + '_foot_def_jnt':
			jntFoot = cmds.ls( sl = 1 )[0]	
	if jntFoot == None:
		return cmds.warning( 'No foot joint found.')	
		
	# check if there is a mesh specified or found in the scene, we need the vertices for some pivots
	if mesh == None:
		if cmds.objExists( 'body' ): mesh = cmds.ls( 'body' )[0]
	if mesh == None:
		if cmds.objectType( cmds.ls(sl=1)[0] ) == 'mesh': mesh = cmds.ls( sl=1 )[0]
	if mesh == None:
		cmds.warning( 'No mesh found.' )
		

	# create ctrl
	footCtrl = controls.Control( side = side, rigPart = "foot", function = "ik", nodeType = "ctrl", size = .75, color = "yellow", aimAxis = "x" )
	footCtrl.circleCtrl()
	footGrp = common.insertGroup( footCtrl.control )
	common.align( footGrp, jntFoot, translate = True, orient = True )
	
	
	# add attributes	
	attrs = ['roll', 'side', 'toeTap', 'toeRaise', 'toeTwist', 'heelTwist']
	for attr in attrs:
		cmds.addAttr( footCtrl.control, longName=attr, attributeType='float', keyable = True )
	
	
	# create pivot locators	
	if side in ['lf', 'left', 'lft']:
		pivotVerts = [196, 199, 29, 28] 
	elif side in ['rt', 'right', 'rgt']:
		pivotVerts = [219, 230, 36, 35]
		 
	pivFront = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='piv_front', nodeType='loc') )[0]
	cmds.xform( translation = cmds.xform( 'body.vtx[%s]' % pivotVerts[0], q = True, t = True ) )
	pivRear = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='piv_rear', nodeType='loc') )[0]
	cmds.xform( translation = cmds.xform( 'body.vtx[%s]' % pivotVerts[1], q = True, t = True ) )
	pivLeft = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='piv_left', nodeType='loc') )[0]
	cmds.xform( translation = cmds.xform( 'body.vtx[%s]' % pivotVerts[2], q = True, t = True ) )
	pivRight = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='piv_right', nodeType='loc') )[0]
	cmds.xform( translation = cmds.xform( 'body.vtx[%s]' % pivotVerts[3], q = True, t = True ) )
	
	cmds.parent( pivFront, pivRear )
	cmds.parent( pivRear, pivLeft )
	cmds.parent( pivLeft, pivRight )
	
	
	pivLocs = [pivFront, pivRear, pivLeft, pivRight]
	for pivLoc in pivLocs: cmds.setAttr( cmds.listRelatives( pivLoc )[0] + '.localScale', .1, .1, .1 ) # reduce local scale
	
	
	# create ball and toe joint
	cmds.select( jntFoot )
	jntBall = cmds.joint()
	jntBall = cmds.rename(jntBall, common.getName( node=jntBall, side=side, rigPart='ball', function='def', nodeType='jnt'))
	cmds.xform( jntBall, translation = ( 0, 0, .5 * cmds.xform( pivFront, q = True, t = True, ws = True )[2] ), relative = True, ws = True )
	cmds.setAttr( jntBall + '.radius', .75 * cmds.getAttr( jntFoot + '.radius' ) )	
	
	jntToe = cmds.joint()
	jntToe = cmds.rename(jntToe, common.getName( node=jntToe, side=side, rigPart='toe', function='def', nodeType='jnt'))
	cmds.xform( jntToe, translation = ( 0, 0, .5 * cmds.xform( pivFront, q = True, t = True, ws = True )[2] ), relative = True, ws = True )
	cmds.setAttr( jntToe + '.radius', cmds.getAttr( jntBall + '.radius' ) )
		
	
	# create toe IK handles
	ikHdlBall = cmds.ikHandle( startJoint = jntFoot, endEffector = jntBall, solver = 'ikSCsolver', name = common.getName( node=jntBall, side=side, rigPart='ball', function='ik', nodeType='ikHandle') )
	ikHdlToe = cmds.ikHandle( startJoint = jntBall, endEffector = jntToe, solver = 'ikSCsolver', name = common.getName( node=jntToe, side=side, rigPart='toe', function='ik', nodeType='ikHandle') )
	cmds.parent( ikHdlBall[0], pivRear )
	cmds.parent( ikHdlToe[0], pivFront )
	
	
	# create clamps and connect roll / side attributes to pivot locators
	limitRoll = 90
	
	clampRollFront = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollFront = cmds.rename( clampRollFront, common.getName( node=clampRollFront, side=side, rigPart='front', function='roll', nodeType='clamp') )
	cmds.setAttr( clampRollFront + '.maxR', limitRoll )
	cmds.connectAttr( footCtrl.control + '.roll', clampRollFront + '.inputR' )
	cmds.connectAttr( clampRollFront + '.outputR', pivFront + '.rotateX' )
	
	clampRollRear = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollRear = cmds.rename( clampRollRear, common.getName( node=clampRollRear, side=side, rigPart='rear', function='roll', nodeType='clamp') )
	cmds.setAttr( clampRollRear + '.minR', -limitRoll )
	cmds.connectAttr( footCtrl.control + '.roll', clampRollRear + '.inputR' )
	cmds.connectAttr( clampRollRear + '.outputR', pivRear + '.rotateX' )

	clampRollLeft = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollLeft = cmds.rename( clampRollLeft, common.getName( node=clampRollLeft, side=side, rigPart='left', function='side', nodeType='clamp') )
	cmds.setAttr( clampRollLeft + '.minR', -limitRoll )
	cmds.connectAttr( footCtrl.control + '.side', clampRollLeft + '.inputR' )
	cmds.connectAttr( clampRollLeft + '.outputR', pivLeft + '.rotateZ' )
	
	clampRollRight = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollRight = cmds.rename( clampRollRight, common.getName( node=clampRollRight, side=side, rigPart='right', function='side', nodeType='clamp') )
	cmds.setAttr( clampRollRight + '.maxR', limitRoll )
	cmds.connectAttr( footCtrl.control + '.side', clampRollRight + '.inputR' )
	cmds.connectAttr( clampRollRight + '.outputR', pivRight + '.rotateZ' )	
	
	
	# connect twist attributes
	cmds.connectAttr( footCtrl.control + '.toeTwist', pivFront + '.rotateY' )
	cmds.connectAttr( footCtrl.control + '.heelTwist', pivRear + '.rotateY' )

	# clamp toe raise and connect
	
	
	return 
	
	
