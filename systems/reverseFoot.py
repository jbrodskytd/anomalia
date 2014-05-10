import maya.cmds as cmds
from anomalia.core import common, controls

def build( side = None, jntFoot = None, ctrlFoot = None, mesh = None ):
	'''
	builds a reverse foot!
	creates roll pivots and adds attributes to foot control

	function requires the side as well as the foot joint either selected or supplied in call.
	If a mesh called 'body' is in the scene or supplied function tries
	to use a specific set of vertices as positions for the roll pivots.
	
	returns a dictionary containing corresponding objects for these keys: 
	joints, pivots, ikHandles, lattice, ctrls
	 
	to do: lattice ground contact setup
	'''
	
	
	# vertex indices for left / right
	pivotVertsLeft = [196, 199, 29, 28]
	latticeVertIdsLeft = ['0:1', '8:9', '28:29', '39:42', '47:48', '51:52', '55:58', '196', '199', '206:207', '211:212', '241:242', '253', '264:265', '268:273', '278:279', '282:285', '290:291', '409', '414', '418', '434', '437:438', '447:448']	
	
	pivotVertsRight = [219, 230, 36, 35]
	latticeVertIdsRight = ['14:15', '24:25', '35:36', '43:46', '49:50', '53:54', '59:62', '219', '230:232', '237:238', '248:249', '258', '261:262', '266:267', '274:277', '280:281', '286:289', '292:293', '424:426', '430:431', '441:443']


	# set correct vertices for left or right, abort if not side specified
	if side in ['lf', 'left', 'lft']:
		pivotVerts = pivotVertsLeft
		latticeVertIds = latticeVertIdsLeft
	elif side in ['rt', 'right', 'rgt']:
		pivotVerts = pivotVertsRight
		latticeVertIds = latticeVertIdsRight
		
	else:
		return cmds.warning( 'No valid side specified' )

		
	# if footJnt is not specified try to use selection
	if jntFoot == None:
		if cmds.ls(sl=1)[0] == side + '_foot_def_jnt':
			jntFoot = cmds.ls( sl = 1 )[0]	
	if jntFoot == None:
		return cmds.warning( 'No foot joint found.')	
		
	# check if there is a mesh specified or found in the scene, we need the vertices for some pivots
	noMesh = False
	if mesh == None:
		if cmds.objExists( 'body' ): mesh = cmds.ls( 'body' )[0]
	if mesh == None:
		if len( cmds.ls(sl=1) ) >= 2:
			if cmds.objectType( cmds.ls(sl=1)[2] ) == 'mesh': mesh = cmds.ls( sl=1 )[2]
	if mesh == None:
		print( 'No mesh found, using default pivots. You can move pivots with "Preserve Child Transform".		' ),
		noMesh = True
		
	outDict = {}
	
	# create ctrl
	ctrlFoot = controls.Control( side = side, rigPart = "foot", function = "ik", nodeType = "ctrl", size = .65, color = "yellow", aimAxis = "x" )
	ctrlFoot.cubeCtrl()
	footGrp = common.insertGroup( ctrlFoot.control )
	common.align( footGrp, jntFoot, translate = True, orient = False )
	outDict['ctrl'] = ctrlFoot.control
	
	
	# add attributes	
	attrs = ['roll', 'side', 'toeTap', 'toeRaise', 'toeTwist', 'heelTwist', 'squashGroundContact', 'showGroundControl']
	for attr in attrs:
		cmds.addAttr( ctrlFoot.control, longName=attr, attributeType='float', keyable = True )
	
	jntFootPos = cmds.xform( jntFoot, q = True, translation = True, ws = True )
	
	# create pivot locators	
	if noMesh == True:
		
		# set default pivot positions	
		pivotOffset = 0.5
		
		pivotFrontPos = [ jntFootPos[0], jntFootPos[1], jntFootPos[2] + pivotOffset ]
		pivotRearPos = [ jntFootPos[0], jntFootPos[1], jntFootPos[2] - pivotOffset ]
		pivotLeftPos = [ jntFootPos[0] + pivotOffset, jntFootPos[1], jntFootPos[2] ]
		pivotRightPos = [ jntFootPos[0] - pivotOffset, jntFootPos[1], jntFootPos[2] ]
		
	else:
				
		# get pivot positions from vertices
		pivotFrontPos = cmds.xform( 'body.vtx[%s]' % pivotVerts[0], q = True, t = True )
		pivotRearPos = cmds.xform( 'body.vtx[%s]' % pivotVerts[1], q = True, t = True )
		pivotLeftPos = cmds.xform( 'body.vtx[%s]' % pivotVerts[2], q = True, t = True )
		pivotRightPos = cmds.xform( 'body.vtx[%s]' % pivotVerts[3], q = True, t = True )
			 
	pivotFront = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='front_piv', nodeType='loc') )[0]
	cmds.xform( translation = pivotFrontPos )
	pivotRear = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='rear_piv', nodeType='loc') )[0]
	cmds.xform( translation = pivotRearPos )
	pivotLeft = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='left_piv', nodeType='loc') )[0]
	cmds.xform( translation = pivotLeftPos )
	pivotRight = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='right_piv', nodeType='loc') )[0]
	cmds.xform( translation = pivotRightPos )
	
	cmds.parent( pivotFront, pivotRear )
	cmds.parent( pivotRear, pivotLeft )
	cmds.parent( pivotLeft, pivotRight )
	
	
	pivotLocs = [pivotFront, pivotRear, pivotLeft, pivotRight]
	outDict['pivots'] = pivotLocs
	for pivotLoc in pivotLocs: cmds.setAttr( cmds.listRelatives( pivotLoc )[0] + '.localScale', .1, .1, .1 ) # reduce local scale
	
	
	# create ball and toe joint
	cmds.select( jntFoot )
	jntBall = cmds.joint()
	jntBall = cmds.rename(jntBall, common.getName( node=jntBall, side=side, rigPart='ball', function='def', nodeType='jnt'))
	cmds.xform( jntBall, translation = ( 0, 0, .5 * cmds.xform( pivotFront, q = True, t = True, ws = True )[2] ), relative = True, ws = True )
	cmds.setAttr( jntBall + '.radius', .75 * cmds.getAttr( jntFoot + '.radius' ) )	
	
	jntToe = cmds.joint()
	jntToe = cmds.rename(jntToe, common.getName( node=jntToe, side=side, rigPart='toe', function='def', nodeType='jnt'))
	cmds.xform( jntToe, translation = ( 0, 0, .5 * cmds.xform( pivotFront, q = True, t = True, ws = True )[2] ), relative = True, ws = True )
	cmds.setAttr( jntToe + '.radius', cmds.getAttr( jntBall + '.radius' ) )
	
	outDict['joints'] = jntBall, jntToe	
	
	# create toe IK handles
	ikHandleBall, ikEffectorBall = cmds.ikHandle( startJoint = jntFoot, endEffector = jntBall, solver = 'ikSCsolver', name = common.getName( node=jntBall, side=side, rigPart='ball', function='ik', nodeType='ikHandle') )
	ikHandleToe, ikEffectorToe = cmds.ikHandle( startJoint = jntBall, endEffector = jntToe, solver = 'ikSCsolver', name = common.getName( node=jntToe, side=side, rigPart='toe', function='ik', nodeType='ikHandle') )
	cmds.parent( ikHandleBall, pivotRear )
	cmds.parent( ikHandleToe, pivotFront )
	outDict['ikHandles'] = ikHandleBall, ikHandleToe
	
	# create clamps and connect roll / side attributes to pivot locators
	limitRoll = 180
	
	clampRollFront = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollFront = cmds.rename( clampRollFront, common.getName( node=clampRollFront, side=side, rigPart='front', function='roll', nodeType='clamp') )
	cmds.setAttr( clampRollFront + '.maxR', limitRoll )
	cmds.connectAttr( ctrlFoot.control + '.roll', clampRollFront + '.inputR' )
	cmds.connectAttr( clampRollFront + '.outputR', pivotFront + '.rotateX' )
	
	clampRollRear = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollRear = cmds.rename( clampRollRear, common.getName( node=clampRollRear, side=side, rigPart='rear', function='roll', nodeType='clamp') )
	cmds.setAttr( clampRollRear + '.minR', -limitRoll )
	cmds.connectAttr( ctrlFoot.control + '.roll', clampRollRear + '.inputR' )
	cmds.connectAttr( clampRollRear + '.outputR', pivotRear + '.rotateX' )

	clampRollLeft = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollLeft = cmds.rename( clampRollLeft, common.getName( node=clampRollLeft, side=side, rigPart='left', function='side', nodeType='clamp') )
	cmds.setAttr( clampRollLeft + '.minR', -limitRoll )
	cmds.connectAttr( ctrlFoot.control + '.side', clampRollLeft + '.inputR' )
	cmds.connectAttr( clampRollLeft + '.outputR', pivotLeft + '.rotateZ' )
	
	clampRollRight = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollRight = cmds.rename( clampRollRight, common.getName( node=clampRollRight, side=side, rigPart='right', function='side', nodeType='clamp') )
	cmds.setAttr( clampRollRight + '.maxR', limitRoll )
	cmds.connectAttr( ctrlFoot.control + '.side', clampRollRight + '.inputR' )
	cmds.connectAttr( clampRollRight + '.outputR', pivotRight + '.rotateZ' )	
	
	
	# connect twist attributes
	cmds.connectAttr( ctrlFoot.control + '.toeTwist', pivotFront + '.rotateY' )
	cmds.connectAttr( ctrlFoot.control + '.heelTwist', pivotRear + '.rotateY' )

	# create pivot for toe raise, parent ball ikHandle and connect
	pivToeRaise = common.insertGroup( pivotFront )
	pivToeRaise = cmds.rename( pivToeRaise, common.getName( node=pivToeRaise, side=side, rigPart='toe', function='raise_piv', nodeType='grp') )
	cmds.parent( ikHandleBall, pivToeRaise )
	cmds.connectAttr( ctrlFoot.control + '.toeRaise', pivToeRaise + '.rotateX' )
	
	# create pivot for toe tap and connect
	pivToeTap = cmds.group( ikHandleToe )
	pivToeTap = cmds.rename( pivToeTap, common.getName( node=pivToeTap, side=side, rigPart='toe', function='tap_piv', nodeType='grp') )
	cmds.xform( pivToeTap, preserve = True, ws = True, piv = cmds.xform( jntBall, q = True, translation = True, ws = True) )
	cmds.connectAttr( ctrlFoot.control + '.toeTap', pivToeTap + '.rotateX' )
	

	# create lattice deformer	
	latticeVerts = []
	for vertId in latticeVertIds:
		latticeVerts.append( '%s.vtx[%s]' % (mesh, vertId) )
	cmds.select( latticeVerts )
	
	ffd, ffdLattice, ffdBase = cmds.lattice( divisions =(3, 3, 3), objectCentered = True, outsideLattice = 2, ofd = 0.25 )
	ffd = cmds.rename( ffd, common.getName( node=ffd, side=side, rigPart='foot', function='contact', nodeType='ffd') )
	ffdLattice = cmds.rename( ffdLattice, common.getName( node=ffdLattice, side=side, rigPart='foot', function='contact', nodeType='ffdlattice') )
	ffdBase = cmds.rename( ffdBase, common.getName( node=ffdBase, side=side, rigPart='foot', function='contact', nodeType='ffdbase') )	
	cmds.connectAttr( ctrlFoot.control + '.squashGroundContact', ffd + '.envelope' )
	cmds.addAttr( ctrlFoot.control + '.squashGroundContact', edit = True, max = 1.00, min = 0.00 )
	
	outDict['lattice'] = ffd, ffdLattice, ffdBase
	
	# set up contact ctrl for lattice
	ctrlGround = controls.Control( side = 'rt', rigPart = "foot", function = "contact", nodeType = "ctrl", size = 1.1, color = "red", aimAxis = "x" )
	ctrlGround.squareCtrl()
	cmds.rotate( 0, 45, 0, ctrlGround.control + '.cv[0:4]', relative = True, objectSpace = True )
	cmds.addAttr( ctrlFoot.control, longName = 'showGroundCtrl', attributeType = 'bool', keyable = True )
	cmds.connectAttr( ctrlFoot.control + '.showGroundCtrl', ctrlGround.control + '.visibility' )
	cmds.setAttr( ctrlGround.control + '.scaleX', lock = True, keyable = False, channelBox = False )
	cmds.setAttr( ctrlGround.control + '.scaleY', lock = True, keyable = False, channelBox = False )
	cmds.setAttr( ctrlGround.control + '.scaleZ', lock = True, keyable = False, channelBox = False )
	cmds.setAttr( ctrlGround.control + '.visibility', keyable = False, channelBox = False )
	cmds.xform( ctrlGround.control, ws = True, t = cmds.xform( ffdLattice + '.pt[1][0][1]', q = True, ws = True , t = True) )
	cmds.parent( ctrlGround.control, ctrlFoot.control )
	common.insertGroup( ctrlGround.control )
	
	
	
	####remove this
	ikHandleLeg, ikEffectorLeg = cmds.ikHandle( startJoint = side + '_upLeg_def_jnt', endEffector = side + '_foot_def_jnt', solver = 'ikRPsolver', name = side + '_ikHandle_leg')
	cmds.parent( ikHandleLeg, pivotFront )
	cmds.parent( pivotRight, ctrlFoot.control )
	cmds.parent( ffdLattice, ffdBase, ctrlFoot.control )
	
	cmds.select( ctrlFoot.control )
	return outDict
