import maya.cmds as cmds
from anomalia.core import common, controls

def build( side = None, jntFoot = None, ctrlFoot = None, ikHandleLeg = None, mesh = None, stretchLoc = None, cleanUp = 0 ):
	'''
	builds a reverse foot!
	creates roll pivots, adds attributes to foot control and sets up the contact lattice.
	
	function requires the side, foot joint (in richards limb module the extra_jnt),
	foot control and ik handle to be supplied.
	The character's mesh is needed for contact lattice deformer and will be used for getting
	the pivot locations from a set of specific vertices.
	
	DO NOT FORGET: If the rig is build before there is a skincluster attached to the mesh
	you will need to reorder the deformers.
	
	returns a dictionary containing corresponding objects for these keys: 
	joints, pivots, ikHandles, lattice, systemsGrp, ctrls
	'''
	
		
	# abort if not all arguments were supplied
	if not jntFoot or not ctrlFoot or not ikHandleLeg or not mesh or not stretchLoc:
		return cmds.warning( 'Argument Error: Please supply all arguments (side, joint_footExtraEnd, control, ikHandle, mesh).' )
	
	
	# vertex indices for left / right
	pivotVertsLeft = [196, 199, 29, 28]
	latticeVertIdsLeft = ['0:1', '8:9', '28:29', '39:42', '47:48', '51:52', '55:58', '63:64', '67:70', '196', '199', '206:207', '211:212', '241:242', '253', '264:265', '268:273', '278:279', '282:285', '290:291', '294:297', '302:303', '409', '414', '418', '434', '437:438', '447:448']
	pivotVertsRight = [219, 230, 36, 35]
	latticeVertIdsRight = ['14:15', '24:25', '35:36', '43:46', '49:50', '53:54', '59:62', '65:66', '71:74', '219', '230:232', '237:238', '248:249', '258', '261:262', '266:267', '274:277', '280:281', '286:289', '292:293', '298:301', '304:305', '424:426', '430:431', '441:443']
	
	# set side relevant data, abort if no side specified
	if side in ['lf', 'left', 'lft']:
		pivotVerts = pivotVertsLeft
		latticeVertIds = latticeVertIdsLeft
		sideColor = 'blue'

	elif side in ['rt', 'right', 'rgt']:
		pivotVerts = pivotVertsRight
		latticeVertIds = latticeVertIdsRight
		sideColor = 'red'
	
	else:
		return cmds.warning( 'No valid side specified' )
	
	
	# create output dictionary
	outDict = {}
	
	
	# add attributes to foot control, if attribute already exists skip it
	attrs = ['roll', 'rollBreak', 'side', 'toeTap', 'toeRaise', 'toeTwist', 'heelTwist', 'squashGroundContact']
	for attr in attrs:
		if ( cmds.attributeQuery( attr, node=ctrlFoot, exists=True ) ) == True:
			print( 'Attribute %s already exists on %s.' % ( attr, ctrlFoot ) )
		else:
			cmds.addAttr( ctrlFoot, longName=attr, attributeType='float', keyable = True )
			
	
	useDefaultPivots = False
	
	# create pivot locators
	if useDefaultPivots == True:
	
		# set default pivot positions
		pivotOffset = 0.5
		jntFootPos = cmds.xform( jntFoot, q = True, translation = True, ws = True )
		pivotFrontPos = [ jntFootPos[0], jntFootPos[1], jntFootPos[2] + pivotOffset ]
		pivotRearPos = [ jntFootPos[0], jntFootPos[1], jntFootPos[2] - pivotOffset ]
		pivotLeftPos = [ jntFootPos[0] + pivotOffset, jntFootPos[1], jntFootPos[2] ]
		pivotRightPos = [ jntFootPos[0] - pivotOffset, jntFootPos[1], jntFootPos[2] ]
	
	else:
	
		# get pivot positions from vertices
		pivotFrontPos = cmds.xform( mesh + '.vtx[%s]' % pivotVerts[0], q = True, ws = True, t = True )
		pivotRearPos = cmds.xform( mesh + '.vtx[%s]' % pivotVerts[1], q = True, ws = True, t = True )
		pivotLeftPos = cmds.xform( mesh + '.vtx[%s]' % pivotVerts[2], q = True, ws = True, t = True )
		pivotRightPos = cmds.xform( mesh + '.vtx[%s]' % pivotVerts[3], q = True, ws = True, t = True )
	
	pivotFront = cmds.spaceLocator()[0]
	pivotFront = cmds.rename( pivotFront, common.getName( node=pivotFront, side=side, rigPart='foot', function='front_piv', nodeType='loc') )
	cmds.xform( translation = pivotFrontPos )
	
	pivotRear = cmds.spaceLocator()[0]
	pivotRear = cmds.rename( pivotRear, common.getName( node=pivotRear, side=side, rigPart='foot', function='rear_piv', nodeType='loc') )
	cmds.xform( translation = pivotRearPos )
	
	pivotLeft = cmds.spaceLocator()[0]
	pivotLeft = cmds.rename( pivotLeft, common.getName( node=pivotLeft, side=side, rigPart='foot', function='left_piv', nodeType='loc') )
	cmds.xform( translation = pivotLeftPos )
	
	pivotRight = cmds.spaceLocator()[0]
	pivotRight = cmds.rename( pivotRight, common.getName( node=pivotRight, side=side, rigPart='foot', function='right_piv', nodeType='loc') )
	cmds.xform( translation = pivotRightPos )
	
	cmds.parent( pivotFront, pivotRear )
	cmds.parent( pivotRear, pivotLeft )
	cmds.parent( pivotLeft, pivotRight )
	
	pivotLocs = [pivotFront, pivotRear, pivotLeft, pivotRight]
	for pivotLoc in pivotLocs: cmds.setAttr( cmds.listRelatives( pivotLoc )[0] + '.localScale', .1, .1, .1 ) # reduce local scale
	
	#outDict['pivots'] = pivotLocs | done after creating ball locator
	
	
	# create ball and toe joint
	cmds.select( clear = True )
	
	jntAnkle = cmds.joint()
	jntAnkle = cmds.rename(jntAnkle, common.getName( node=jntAnkle, side=side, rigPart='ankle', function='driven', nodeType='jnt'))
	cmds.xform( jntAnkle, ws = True, translation = ( cmds.xform( ikHandleLeg, q = True, t = True, ws = True ) ) )
	cmds.setAttr( jntAnkle + '.radius', .75 * cmds.getAttr( jntFoot + '.radius' ) )	
	
	jntBall = cmds.joint()
	jntBall = cmds.rename(jntBall, common.getName( node=jntBall, side=side, rigPart='ball', function='driven', nodeType='jnt'))
	cmds.xform( jntBall, ws = True, t = ( cmds.xform( jntFoot, q = True, ws = True, t = True ) ) )
	cmds.xform( jntBall, ws = True, relative = True, t = ( 0, 0, .5 * cmds.xform( pivotFront, q = True, t = True, ws = True )[2] ) )
	cmds.setAttr( jntBall + '.radius', .75 * cmds.getAttr( jntFoot + '.radius' ) )
	
	jntToe = cmds.joint()
	jntToe = cmds.rename(jntToe, common.getName( node=jntToe, side=side, rigPart='toe', function='driven', nodeType='jnt'))
	cmds.xform( jntToe, t = ( 0, 0, .5 * cmds.xform( pivotFront, q = True, t = True, ws = True )[2] ), relative = True, ws = True )
	cmds.setAttr( jntToe + '.radius', cmds.getAttr( jntBall + '.radius' ) )
	
	grpBufJnt = cmds.group ( empty = True )
	grpBufJnt = cmds.rename( grpBufJnt, common.getName( node=grpBufJnt, side=side, rigPart='foot', function='jnt_buf', nodeType='grp' ) )
	common.align( grpBufJnt, jntFoot, translate = True, orient = False )
	cmds.parentConstraint( jntFoot, grpBufJnt, mo = False )
	cmds.parent( jntAnkle, grpBufJnt )
	
	grpJnts = cmds.group( empty = True )
	grpJnts = cmds.rename( grpJnts, common.getName( node=grpJnts, side=side, rigPart='foot', function='jnts', nodeType='grp' ) )
	common.align( grpJnts, ctrlFoot, translate = True, orient = False )
	cmds.parent( grpBufJnt, grpJnts )
	
	outDict['joints'] = [ jntAnkle, jntBall, jntToe ]
	
	
	# create toe IK handles
	ikHandleBall, ikEffectorBall = cmds.ikHandle( startJoint = jntAnkle, endEffector = jntBall, solver = 'ikSCsolver', name = '%s_ball_ikHandle' % side )
	ikHandleToe, ikEffectorToe = cmds.ikHandle( startJoint = jntBall, endEffector = jntToe, solver = 'ikSCsolver', name = '%s_toe_ikHandle' % side )
	cmds.parent( ikHandleBall, pivotRear )
	cmds.parent( ikHandleToe, pivotFront )
	
	outDict['ikHandles'] = [ ikHandleLeg, ikHandleBall, ikHandleToe ]
	
	
	# create ball pivot locator
	pivotBall = cmds.spaceLocator( name = common.getName( side=side, rigPart='foot', function='ball_piv', nodeType='loc') )[0]
	cmds.xform( pivotBall, ws = True, translation = cmds.xform( jntBall, q = True, ws = True, t = True ) )
	pivotBall = cmds.parent( pivotBall, pivotFront )[0]
	pivotLocs.insert( 0, pivotBall ) 
	
	outDict['pivots'] = pivotLocs
	
	
	# create simple clamps and connect roll, side attribute to pivot locators
	rollLimit = 180.0
	cmds.addAttr( ctrlFoot + '.side', edit = True, min = -1 * rollLimit, max = rollLimit )
	
	clampRollRear = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollRear = cmds.rename( clampRollRear, common.getName( node=clampRollRear, side=side, rigPart='rear', function='roll', nodeType='clamp') )
	cmds.setAttr( clampRollRear + '.minR', -rollLimit )
	cmds.connectAttr( ctrlFoot + '.roll', clampRollRear + '.inputR' )
	cmds.connectAttr( clampRollRear + '.outputR', pivotRear + '.rotateX' )
	
	clampRollLeft = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollLeft = cmds.rename( clampRollLeft, common.getName( node=clampRollLeft, side=side, rigPart='left', function='side', nodeType='clamp') )
	cmds.setAttr( clampRollLeft + '.minR', -rollLimit )
	cmds.connectAttr( ctrlFoot + '.side', clampRollLeft + '.inputR' )
	cmds.connectAttr( clampRollLeft + '.outputR', pivotLeft + '.rotateZ' )
	
	clampRollRight = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollRight = cmds.rename( clampRollRight, common.getName( node=clampRollRight, side=side, rigPart='right', function='side', nodeType='clamp') )
	cmds.setAttr( clampRollRight + '.maxR', rollLimit )
	cmds.connectAttr( ctrlFoot + '.side', clampRollRight + '.inputR' )
	cmds.connectAttr( clampRollRight + '.outputR', pivotRight + '.rotateZ' )
	
	# setup foot roll
	cmds.setAttr( ctrlFoot + '.rollBreak', 30.0 )
	cmds.addAttr( ctrlFoot + '.rollBreak', edit = True, min = 0.0, max = rollLimit )
	cmds.addAttr( ctrlFoot + '.roll', edit = True, min = -rollLimit, max = rollLimit )

	clampRollBall = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollBall = cmds.rename( clampRollBall, common.getName( node=clampRollBall, side=side, rigPart='ball', function='roll', nodeType='clamp') )
	cmds.connectAttr( ctrlFoot + '.rollBreak', clampRollBall + '.maxR' )
	cmds.connectAttr( ctrlFoot + '.roll', clampRollBall + '.inputR' )

	pmaRollBall = cmds.shadingNode( 'plusMinusAverage', asUtility = True )
	cmds.setAttr( pmaRollBall + '.operation', 2 )
	cmds.setAttr( pmaRollBall + '.input1D[0]', 180 )
	cmds.connectAttr( ctrlFoot + '.rollBreak', pmaRollBall + '.input1D[1]' )

	remapRollBall = cmds.shadingNode( 'remapValue', asUtility = True )
	cmds.setAttr( remapRollBall + '.outputMin', -1 )
	cmds.setAttr( remapRollBall + '.outputMax', 1 )
	cmds.setAttr( remapRollBall + '.value[0].value_Position', 0 )
	cmds.setAttr( remapRollBall + '.value[0].value_FloatValue', 1 )
	cmds.setAttr( remapRollBall + '.value[1].value_Position', 1 )
	cmds.setAttr( remapRollBall + '.value[1].value_FloatValue', 0 )
	cmds.connectAttr( ctrlFoot + '.rollBreak', remapRollBall + '.inputMin' )
	cmds.connectAttr( pmaRollBall + '.output1D', remapRollBall + '.inputMax' )

	multRollBall = cmds.shadingNode( 'multiplyDivide', asUtility = True )
	cmds.connectAttr( clampRollBall + '.outputR', multRollBall + '.input1X' )
	cmds.connectAttr( remapRollBall + '.outValue', multRollBall + '.input2X' )
	cmds.connectAttr( multRollBall + '.outputX', pivotBall + '.rotateX' )
			
	clampRollFront = cmds.shadingNode( 'clamp', asUtility = True )
	clampRollFront = cmds.rename( clampRollFront, common.getName( node=clampRollFront, side=side, rigPart='toe', function='roll', nodeType='clamp') )
	pmaRollFront = cmds.shadingNode( 'plusMinusAverage', asUtility = True )
	pmaRollFront = cmds.rename( pmaRollFront, common.getName( node=pmaRollFront, side=side, rigPart='toe', function='roll', nodeType='pma') )

	cmds.connectAttr( ctrlFoot + '.rollBreak', clampRollFront + '.minR' )
	cmds.connectAttr( ctrlFoot + '.roll', clampRollFront + '.inputR' )
	cmds.setAttr( clampRollFront + '.maxR', rollLimit )
	cmds.connectAttr( clampRollFront + '.outputR', pmaRollFront + '.input1D[0]' )
	
	cmds.setAttr( pmaRollFront + '.operation', 2 )
	cmds.connectAttr( ctrlFoot + '.rollBreak', pmaRollFront + '.input1D[1]' )
	cmds.connectAttr( pmaRollFront + '.output1D', pivotFront + '.rotateX' )
	
	# connect twist attributes
	cmds.connectAttr( ctrlFoot + '.toeTwist', pivotFront + '.rotateY' )
	cmds.connectAttr( ctrlFoot + '.heelTwist', pivotRear + '.rotateY' )
	
	# create pivot for toe raise, parent ball ikHandle and connect
	pivToeRaise = common.insertGroup( pivotFront )
	pivToeRaise = cmds.rename( pivToeRaise, common.getName( node=pivToeRaise, side=side, rigPart='toe', function='raise_piv', nodeType='grp') )
	cmds.parent( ikHandleBall, pivToeRaise )
	cmds.connectAttr( ctrlFoot + '.toeRaise', pivToeRaise + '.rotateX' )
	
	# create pivot for toe tap and connect
	pivToeTap = cmds.group( ikHandleToe )
	pivToeTap = cmds.rename( pivToeTap, common.getName( node=pivToeTap, side=side, rigPart='toe', function='tap_piv', nodeType='grp') )
	cmds.xform( pivToeTap, preserve = True, ws = True, piv = cmds.xform( jntBall, q = True, translation = True, ws = True) )
	cmds.connectAttr( ctrlFoot + '.toeTap', pivToeTap + '.rotateX' )
	
	
	# create lattice deformer
	latticeVerts = []
	for vertId in latticeVertIds:
		latticeVerts.append( '%s.vtx[%s]' % (mesh, vertId) )
	cmds.select( latticeVerts )
	
	ffd, ffdLattice, ffdBase = cmds.lattice( divisions =(3, 2, 4), objectCentered = True, outsideLattice = 2, ofd = 0.25 )
	ffd = cmds.rename( ffd, common.getName( node=ffd, side=side, rigPart='foot', function='contact', nodeType='ffd') )
	ffdLattice = cmds.rename( ffdLattice, common.getName( node=ffdLattice, side=side, rigPart='foot', function='contact', nodeType='ffdlattice') )
	ffdBase = cmds.rename( ffdBase, common.getName( node=ffdBase, side=side, rigPart='foot', function='contact', nodeType='ffdbase') )
	cmds.addAttr( ctrlFoot + '.squashGroundContact', edit = True, min = 0.0 ) #, max = 1.0
	cmds.setAttr( ctrlFoot + '.squashGroundContact',  1.0 )
	cmds.connectAttr( ctrlFoot + '.squashGroundContact', ffd + '.envelope' )
	
	
	outDict['lattice'] = ffd, ffdLattice, ffdBase
	
	
	# set up ground contact control
	ctrlGround = controls.Control( side = side, rigPart = "foot", function = "contact", nodeType = "ctrl", size = 1.5, color = sideColor, aimAxis = "x" )
	ctrlGround.squareCtrl()
	cmds.rotate( 0, 45, 0, ctrlGround.control + '.cv[0:4]', relative = True, objectSpace = True )
	cmds.xform( ctrlGround.control, ws = True, t = cmds.xform( jntFoot, q = True, ws = True , t = True ) )
	
	cmds.addAttr( ctrlFoot, longName = 'showGroundCtrl', attributeType = 'bool', keyable = True )
	cmds.connectAttr( ctrlFoot + '.showGroundCtrl', ctrlGround.control + '.visibility' )
	cmds.setAttr( ctrlGround.control + '.scaleX', lock = True, keyable = False, channelBox = False )
	cmds.setAttr( ctrlGround.control + '.scaleY', lock = True, keyable = False, channelBox = False )
	cmds.setAttr( ctrlGround.control + '.scaleZ', lock = True, keyable = False, channelBox = False )
	cmds.setAttr( ctrlGround.control + '.visibility', keyable = False, channelBox = False )
	cmds.addAttr( ctrlGround.control, longName = 'followFoot', attributeType = 'float', keyable = True, min = 0.0, max = 1.0, dv = 1.0 )
	
	ctrlGrpGround = common.insertGroup( ctrlGround.control )
	constGrpGround = cmds.pointConstraint( ctrlFoot, ctrlGrpGround, mo = False, skip = 'y' )[0]
	cmds.setAttr( constGrpGround + '.enableRestPosition', 0 )
	cmds.connectAttr( ctrlGround.control + '.followFoot', constGrpGround + '.' + cmds.pointConstraint( constGrpGround, q = True, weightAliasList = True )[0] )
	
	
	# create base and top lattice ctrl joints
	topLatticePoints =  ['[1][1][3]', '[0][1][2]', '[0][1][1]', '[1][1][0]', '[2][1][1]', '[2][1][2]']
	baseLatticePoints = ['[1][0][3]', '[0][0][2]', '[0][0][1]', '[1][0][0]', '[2][0][1]', '[2][0][2]']
	centerLatticePoints = [ '[1][0][1]', '[1][0][2]' ]
	latticeJntRotations = [0, -65, -115, -180, -245, -295] 
	
	grpLatticeJnts = cmds.group( empty = True )
	grpLatticeJnts = cmds.rename( grpLatticeJnts, common.getName( node=grpLatticeJnts, side=side, rigPart='foot', function='ffd_jnts', nodeType='grp' ) )
	common.align( grpLatticeJnts, ctrlFoot, translate = True, orient = False )
	
	topLatticeJnts = []
	baseLatticeJnts = []
	for latticePoints in [ baseLatticePoints, topLatticePoints ]:
		i = 0
		if latticePoints == topLatticePoints: pos = 'top'
		if latticePoints == baseLatticePoints: pos = 'base'
		for latticePoint in latticePoints:
			i += 1
			cmds.select( clear = True )
			latticeJnt = cmds.joint()
			latticeJnt = cmds.rename( latticeJnt, common.getName( node=latticeJnt, side=side, rigPart='foot', function='ffd_%s%s' % ( pos,i ), nodeType='jnt' ) )
			cmds.xform( latticeJnt, ws = True, t = cmds.xform( '%s.pt%s' % ( ffdLattice, latticePoint ), q = True, ws = True, t = True ) )
			cmds.setAttr( latticeJnt + '.radius', .5 )
			cmds.setAttr( latticeJnt + '.rotateY', latticeJntRotations[i-1] )
			latticeJnt = cmds.parent( latticeJnt, grpLatticeJnts )[0]
			common.insertGroup( latticeJnt )
			if pos == 'top': topLatticeJnts.append( latticeJnt )
			if pos == 'base': baseLatticeJnts.append( latticeJnt )
	
	# center lattice joint
	cmds.select( clear = True )
	centerLatticeJnt = cmds.joint()
	centerLatticeJnt = cmds.rename( centerLatticeJnt, common.getName( node=centerLatticeJnt, side=side, rigPart='foot', function='ffd_center', nodeType='jnt' ) )
	cmds.setAttr( centerLatticeJnt + '.radius', .5 )
	clpPos1 = cmds.xform( '%s.pt%s' % ( ffdLattice, centerLatticePoints[0] ), q = True, ws = True, t = True )
	clpPos2 = cmds.xform( '%s.pt%s' % ( ffdLattice, centerLatticePoints[1] ), q = True, ws = True, t = True )
	clpPos = [0,0,0]
	clpPos[0] = clpPos1[0] + 0.5 * ( clpPos2[0] - clpPos1[0] )
	clpPos[1] = clpPos1[1] + 0.5 * ( clpPos2[1] - clpPos1[1] )
	clpPos[2] = clpPos1[2] + 0.5 * ( clpPos2[2] - clpPos1[2] )
	cmds.xform( centerLatticeJnt, ws = True, t = clpPos)
	centerLatticeJnt = cmds.parent( centerLatticeJnt, grpLatticeJnts)[0]
	common.insertGroup( centerLatticeJnt )
	baseLatticeJnts.append( centerLatticeJnt )
	
	# create ground reader locators
	grpReadLocs = cmds.group( empty = True )
	grpReadLocs = cmds.rename( grpReadLocs, common.getName( node=grpReadLocs, side=side, rigPart='foot', function='read_locs', nodeType='grp' ) )
	
	i = 0
	for latticeJnt in baseLatticeJnts:
		i += 1
		
		locBase = cmds.spaceLocator()
		cmds.setAttr( cmds.listRelatives( locBase )[0] + '.localScale', .2, .2, .2  )
		locBase = cmds.rename( locBase, common.getName( node=locBase, side=side, rigPart='ground', function='base%s' % i, nodeType='loc' ) )
		cmds.setAttr( locBase + '.visibility', 0 )
		
		locReader = cmds.spaceLocator()
		cmds.setAttr( cmds.listRelatives( locReader )[0] + '.localScale', .2, .2, .2  )
		locReader = cmds.rename( locReader, common.getName( node=locReader, side=side, rigPart='ground', function='read%s' % i, nodeType='loc' ) )
		
		locTop = cmds.spaceLocator()
		cmds.setAttr( cmds.listRelatives( locTop )[0] + '.localScale', .2, .2, .2  )
		locTop = cmds.rename( locTop, common.getName( node=locTop, side=side, rigPart='ground', function='top%s' % i, nodeType='loc' ) )
	
		locReader = cmds.parent( locReader, locBase )[0]
		constRead = cmds.pointConstraint( locTop, locReader, mo = False )
		locBase = cmds.parent( locBase, ctrlGround.control )[0]
		
		locTop = cmds.parent( locTop, grpReadLocs )[0]
	
		cmds.xform( locTop, ws = True, t = cmds.xform( latticeJnt, q = True, ws = True , t = True ) )
		constBase = cmds.pointConstraint( locTop, locBase, mo = False, skip = 'y' )
	
	
		# remap reader output and connect to lattice joint
		remapRead = cmds.shadingNode( 'remapValue', asUtility = True )
		remapRead = cmds.rename( remapRead, common.getName( node=remapRead, side=side, rigPart='ground', function='read%s' % i, nodeType='rmv') )
		cmds.setAttr( remapRead + '.inputMax', -1)
		cmds.setAttr( remapRead + '.outputMax', 1)
		cmds.connectAttr( locReader + '.translateY', remapRead + '.inputValue', f = True )
		cmds.connectAttr( remapRead + '.outValue', latticeJnt + '.translateY', f = True )
		
		if latticeJnt == centerLatticeJnt: # set min max on center remap to enable center drag
			remapRead = cmds.rename( remapRead, common.getName( node=remapRead, side=side, rigPart='ground', function='read_center', nodeType='rmv') )
		
			cmds.setAttr( remapRead + '.inputMin', 0 )
			cmds.setAttr( remapRead + '.outputMin', 0 )
			cmds.setAttr( remapRead + '.inputMax', 1 )
			cmds.setAttr( remapRead + '.outputMax', 1 )
			
			cmds.setAttr( remapRead + '.value[0].value_FloatValue', 0 )	
			cmds.setAttr( remapRead + '.value[0].value_Position', -0.02 )
			cmds.setAttr( remapRead + '.value[0].value_Interp', 1 )
			
			cmds.setAttr( remapRead + '.value[1].value_FloatValue', -1 )	
			cmds.setAttr( remapRead + '.value[1].value_Position', 0.25 )	
			cmds.setAttr( remapRead + '.value[1].value_Interp', 1 )	
					
			cmds.setAttr( remapRead + '.value[2].value_FloatValue', 1 )	
			cmds.setAttr( remapRead + '.value[2].value_Position', -0.25 )	
			cmds.setAttr( remapRead + '.value[2].value_Interp', 1 )			
			
		else: # connect remap output to top joints tz to enhance squishyness
			cmds.connectAttr( remapRead + '.outValue', topLatticeJnts[i-1] + '.translateZ', f = True )
	
	# bind lattice
	clusterLattice = cmds.skinCluster( topLatticeJnts + baseLatticeJnts, ffdLattice ,tsb=True, skinMethod = 0, nw = 1)
	clusterLattice = cmds.rename( clusterLattice, common.getName( node=clusterLattice, side=side, rigPart='foot', function='lattice', nodeType='skinCluster') )
	
	
	# create system and const groups
	grpConst = cmds.group( empty = True, name = side + '_foot_const_grp' )
	common.align( grpConst, ctrlFoot, translate = True, orient = False )
	cmds.parentConstraint( ctrlFoot, grpConst, mo = True )
	
	grpSystem = cmds.group( empty = True, name = side + '_foot_grp' )
	common.align( grpSystem, ctrlFoot, translate = True, orient = False )
	
	# grouping
	grpConst = cmds.parent( grpConst, grpSystem )[0]
	grpJnts = cmds.parent( grpJnts, grpSystem )[0]
	ctrlGrpGround = cmds.parent( ctrlGrpGround, grpSystem )[0]
	grpReadLocs = cmds.parent( grpReadLocs, pivotBall )[0]
	grpLatticeJnts = cmds.parent( grpLatticeJnts, pivotBall )[0]
	pivotRight = cmds.parent( pivotRight, grpConst )[0]
	
	cmds.setAttr( ffdLattice + '.inheritsTransform', 0 )
	ffdLattice, ffdBase = cmds.parent( ffdLattice, ffdBase, pivotBall )
	
	# group ik handle
	cmds.parent( ikHandleLeg, pivotBall )
	for each in cmds.listRelatives( ikHandleLeg ):
		if cmds.nodeType( each ) == 'pointConstraint':
			cmds.delete( each )
	
	# constrain stretch locator
	for each in cmds.listRelatives( stretchLoc ):
		if cmds.nodeType( each ) == 'pointConstraint':
			cmds.delete( each )
	cmds.parentConstraint( pivotBall , stretchLoc, mo = True, weight = 1 )
	
	# constrain low curve jnt grp
	lowCurveGrp = None
	systemGrpLimb = cmds.listRelatives( cmds.listRelatives( stretchLoc, p = True ), p = True )
	for each in cmds.listRelatives( systemGrpLimb ):
		if ( ( side + '_leg_low_curve' ) in each ) and ( cmds.nodeType( each ) == 'transform' ):
			lowCurveGrp = each

	if lowCurveGrp:
		for each in cmds.listRelatives( lowCurveGrp ):
			if cmds.nodeType( each ) == 'parentConstraint':
				cmds.delete( each )
		cmds.parentConstraint( pivotBall, lowCurveGrp, mo = True )
	else: print( 'Could not find leg_low_curve_#_jnt_grp, please constrain manually to ball pivot locator.' )
	
	# hide const / utility grp
	if cleanUp == 1:
		cmds.setAttr( grpConst + '.visibility', 0 )
		cmds.setAttr( grpJnts + '.visibility', 0 )
	
	
	outDict['systemsGrp'] = grpSystem
		
	
	cmds.select( ctrlFoot )
	print('DO NOT FORGET: If the rig is build before there is a skincluster attached to the mesh you will need to reorder the deformers.')
	print('Reverse Foot %s created.' % side)
	return outDict
