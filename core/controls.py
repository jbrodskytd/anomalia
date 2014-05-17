'''
Created on 19 Apr 2014

@author: Jamie
'''

import maya.cmds as cmds
import os
from anomalia.core import common as common
from anomalia.core.utils import showDialog

class Control(object):
    
    def __init__(self, side = "cn", rigPart = "spine", function = "", nodeType = "ctrl", size = 1, color = "green", aimAxis = "x", group = False, flip = False):
        
        
        '''
        This is the constructor
        @param[in] baseName: this is the name that will be used as a base for all the names
        @param[in] side: this is the side that will be used as a base for all the names
        @param[in] size: this is the size that will be used as a base for all the names
        @param objColour: string, specify the colour of the chain
        @param[in] aimAxis: this is the aim axis used to orient the control, use only vector for x, y, z and their negatives
        @param group: whether or not to add a zero/offset group
        
        '''
        
        ## the baseName of the handGuides guide
        self.rigPart            = rigPart
        ## the side of the handGuides guide
        self.side               = side
        ## the side of the handGuides guide
        self.function           = function
        ## the side of the handGuides guide
        self.nodeType           = nodeType
        ## the colour of the handGuides guide
        self.color              = color
        ## the size of the handGuides guide
        self.size               = size
        ## which axis the control is aiming at
        self.aimAxis            = aimAxis
        ## create zero/offset grouping hierarchy
        self.group              = group
        ## flips the control in the aim axis
        self.flip               = flip
        
        self.control = None
        self.controlGrp = None
        self.controlName = None
        
    def circleCtrl(self):
        
        '''
        This procedure creates a circle control
        '''
        
        self.__buildName()
        
        if not self.controlName:
            return
        self.control = cmds.circle(name = self.controlName, ch = 0, o = 1, nr = [1,0,0])[0]
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def pinCtrl(self):
        
        '''
        This procedure creates a pin control
        
        '''
        
        self.__buildName()
        
        if not self.controlName:
            return
        
        line = cmds.curve(d = 1, p = [(0,0,0), (2,0,0)], k = [0,1], n = self.controlName)
        circle = cmds.circle(ch = 1, o = True, nr = (0,1,0), r = 0.5)[0]
        
        shapes = cmds.listRelatives(circle, shapes = True)[0]
        
        cmds.move(2.5, 0, 0, "%s.cv[:]" % shapes, r = 1)
        cmds.parent(shapes, line, shape = 1, r = 1)
        
        cmds.delete(circle)
        cmds.select(cl = True)
        self.control = line
        
        shapes = cmds.listRelatives(self.control, shapes = True)
        
        for s in shapes:
            
            cmds.select("%s.cv[:]" % s)
            cmds.rotate(0, 0, 90, r = 1)
            cmds.select(clear = True)
            
            if self.aimAxis == "y":
                cmds.select("%s.cv[:]" % s)
                cmds.rotate(-90, 0, 0, r = 1)
                cmds.select(clear = True)
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def sphereCtrl(self):
        
        '''
        This procedure creates a coloured sphere
        
        '''
        
        self.__buildName()
        
        if not self.controlName:
            return
        
        control = cmds.sphere(n = self.controlName)
        shape = cmds.listRelatives(control[0], s = 1)
        cmds.disconnectAttr("%s.instObjGroups[0]" % shape[0], "initialShadingGroup.dagSetMembers[0]")
        
        self.control = control[0]
            
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def cubeCtrl(self):
        
        '''
        This procedure creates a cube control
        '''
        self.__buildName()
        if not self.controlName:
            return
        
        cube = cmds.curve(d= 1, p=[ (1,1,1),(-1,1,1),(-1,-1,1),(1,-1,1),(1,1,1),(1,1,-1),(1,-1,-1), (-1,-1,-1), (-1,1,-1), (1,1,-1), (-1,1,-1),(-1,1,1), (-1,-1,1),(-1,-1,-1), (1,-1,-1), (1,-1,1)], name = self.controlName)
        self.control = cube
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def squareCtrl(self):
        
        '''
        This procedure creates a hip control
        
        '''
        
        self.__buildName()
        if not self.controlName:
            return
        
        
        circle = cmds.circle(name = self.controlName, ch = 0, o = 1, d = 1, s = 4, nr = [0,1,0])[0]
        self.control = circle
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def arrowFourCtrl(self):
        
        '''
        This procedure creates a hip control
        
        '''
        
        self.__buildName()
        if not self.controlName:
            return
        
        
        curve = cmds.curve(d= 1, p=[ (0,0,2),(-0.8,0,1.2),(-0.4,0,1.2),(-0.4,0,0.4),(-1.2,0,0.4),(-1.2,0,0.8),(-2,0,0),(-1.2,0,-0.8),(-1.2,0,-0.4),(-0.4,0,-0.4),(-0.4,0,-1.2),(-0.8,0,-1.2),(0,0,-2),(0.8,0,-1.2),(0.4,0,-1.2),(0.4,0,-0.4),(1.2,0,-0.4),(1.2,0,-0.8),(2,0,0),(1.2,0,0.8),(1.2,0,0.4),(0.4,0,0.4),(0.4,0,1.2),(0.8,0,1.2),(0,0,2)], name = self.controlName)
        self.control = curve
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def crownCtrl(self):
        
        '''
        
        '''
        
        self.__buildName()
        if not self.controlName:
            return
        
        curve = cmds.curve(d=3, p = [(1.023, 0.135, -0.506), (1.015, 0.135, -0.506), (0.956, 0.027, -0.504), (0.947, 0.027, -0.504), (0.858, 0.027, -0.678), (0.722, 0.027, -0.824),
                                   (0.556, 0.027, -0.925), (0.557, 0.027, -0.933), (0.561, 0.135, -0.986), (0.562, 0.135, -0.993), (0.500, 0.135, -1.029), (0.434, 0.135, -1.058),
                                   (0.365, 0.135, -1.081), (0.360, 0.135, -1.076), (0.325, 0.027, -1.039), (0.320, 0.027, -1.034), (0.219, 0.027, -1.065), (0.111, 0.027, -1.083),
                                   (0.000, 0.027, -1.083), (-0.090, 0.027, -1.083), (-0.178, 0.027, -1.071), (-0.262, 0.027, -1.050), (-0.267, 0.027, -1.055), (-0.300, 0.135, -1.094),
                                   (-0.305, 0.135, -1.100), (-0.375, 0.135, -1.081), (-0.442, 0.135, -1.055), (-0.506, 0.135, -1.023), (-0.506, 0.135, -1.016), (-0.504, 0.027, -0.963),
                                   (-0.504, 0.027, -0.956), (-0.676, 0.027, -0.863), (-0.820, 0.027, -0.724), (-0.919, 0.027, -0.556), (-0.9273, 0.027, -0.557), (-0.985, 0.135, -0.561),
                                   (-0.993, 0.135, -0.562), (-1.029, 0.135, -0.500), (-1.058, 0.135, -0.434), (-1.081, 0.135, -0.365), (-1.075, 0.135, -0.359), (-1.030, 0.027, -0.316),
                                   (-1.024, 0.027, -0.310), (-1.050, 0.027, -0.217), (-1.065, 0.027, -0.119), (-1.065, 0.027, -0.017), (-1.065, 0.027, 0.073), (-1.053, 0.027, 0.162),
                                   (-1.032, 0.027, 0.246), (-1.039, 0.027, 0.253), (-1.092, 0.135, 0.298), (-1.100, 0.135, 0.305), (-1.081, 0.135, 0.375), (-1.055, 0.135, 0.442),
                                   (-1.023, 0.135, 0.506), (-1.013, 0.135, 0.506), (-0.939, 0.027, 0.504), (-0.928, 0.027, 0.504), (-0.839, 0.027, 0.663), (-0.710, 0.027, 0.797),
                                   (-0.554, 0.027, 0.892), (-0.555, 0.027, 0.903), (-0.561, 0.135, 0.982), (-0.562, 0.135, 0.993), (-0.500, 0.135, 1.029), (-0.434, 0.135, 1.058),
                                   (-0.365, 0.135, 1.081), (-0.357, 0.135, 1.073), (-0.301, 0.027, 1.014), (-0.293, 0.027, 1.006), (-0.200, 0.027, 1.033), (-0.101, 0.027, 1.047),
                                   (0.000, 0.027, 1.047), (0.081, 0.027, 1.047), (0.160, 0.027, 1.038), (0.237, 0.027, 1.020), (0.244, 0.027, 1.029), (0.297, 0.135, 1.091),
                                   (0.305, 0.135, 1.100), (0.375, 0.135, 1.081), (0.442, 0.135, 1.055), (0.506, 0.135, 1.023), (0.506, 0.135, 1.012), (0.504, 0.027, 0.932),
                                   (0.504, 0.027, 0.921), (0.664, 0.027, 0.834), (0.800, 0.027, 0.708), (0.898, 0.027, 0.554), (0.908, 0.027, 0.555), (0.983, 0.135, 0.561),
                                   (0.993, 0.135, 0.562), (1.029, 0.135, 0.500), (1.058, 0.135, 0.434), (1.081, 0.135, 0.365), (1.074, 0.135, 0.358), (1.023, 0.0276, 0.310),
                                   (1.016, 0.027, 0.303), (1.048, 0.027, 0.201), (1.065, 0.027, 0.094), (1.065, 0.027, -0.017), (1.065, 0.027, -0.098), (1.056, 0.027, -0.177),
                                   (1.039, 0.027, -0.252), (1.045, 0.027, -0.258), (1.09, 0.135, -0.299), (1.100, 0.135, -0.305), (1.081, 0.135, -0.375), (1.055, 0.135, -0.442),
                                   (1.023, 0.135, -0.506)], name = self.controlName)
        
        self.control = curve
        
        shapes = cmds.listRelatives(self.control, shapes = True)
        
        for s in shapes:
            
            cmds.select("%s.cv[:]" % s)
            cmds.rotate(0, 0, -90, r = 1)
            cmds.select(clear = True)
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
        
    def locatorCtrl(self):
        
        '''
        Creates a locator controls
        '''
        
        self.__buildName()
        if not self.controlName:
            return
        
        curveList = []
        
        for i in range(3):
            
            curve = cmds.curve(d = 1, p = [(0.0164983, -0.998716, -0.0164984), (0.0164983, 0.998716, -0.0164983), (-0.0164983, 0.998716, -0.0164983), (-0.0164983, -0.998716, -0.0164984), (-0.0164983, -0.998716, 0.0164983),
                                           (-0.0164983, 0.998716, 0.0164984), (0.0164983, 0.998716, 0.0164984), (0.0164983, -0.998716, 0.0164983), (0.0163992, -0.998716, -0.0164984), (-0.0164983, -0.998716, -0.0164984), 
                                           (-0.0164983, -0.998716, 0.0164983), (0.0164983, -0.998716, 0.0164983), (0.0164983, 0.998716, 0.0164984), (0.0164983, 0.998716, -0.0164983), (-0.0164983, 0.998716, -0.0164983), 
                                           (-0.0164983, 0.998716, 0.0164984)], name = self.controlName)
            curveList.append(curve)
            
        
        cmds.rotate( 0, 0, 90, curveList[1])
        cmds.makeIdentity(curveList[1], apply=True, t=1, r=1, s=1, n=0)
        cmds.rotate( 90, 0, 0, curveList[2])
        cmds.makeIdentity(curveList[2], apply=True, t=1, r=1, s=1, n=0)
        
        curveShape01 = cmds.listRelatives(curveList[1], shapes = True)[0]
        curveShape02 = cmds.listRelatives(curveList[2], shapes = True)[0]
        
        cmds.parent(curveShape01, curveList[0], r = True, s = True) 
        cmds.parent(curveShape02, curveList[0], r = True, s = True)
        
        cmds.delete(curveList[1], curveList[2])
        
        self.control = curveList[0]
        
        self.__finaliseCtrl()
        common.colorize(self.color, nodeList = [self.control])
              
    def __buildName(self):
        
        '''
        This function creates the name of the control
        
        '''
        
        self.controlName = common.getName(self, self.side, self.rigPart, self.function, self.nodeType)
        
    def __finaliseCtrl(self):
        
        '''
        This function is in charge for orienting, scaling and zeroing out the control
        
        '''
        
        self.__aimCtrl()
        
        if self.size != 1:
            
            shapes = cmds.listRelatives(self.control, shapes = True)
            
            for s in shapes:
                
                cmds.select("%s.cv[:]" % s)
                cmds.scale(self.size, self.size, self.size, r = 1)
                cmds.select(clear = True)
            
            cmds.delete(self.control, ch = 1)
        
        if self.group == True:
            
            common.insertGroup(self.control)
            #self.controlGrp = self.__groupHier(self.control)
            
        if self.flip == True:
            
            self.__flip()
        
    def __aimCtrl(self):
        
        '''
        This procedure lets you correctly aim the control based on the provided aimAxis
        
        '''
        
        y = 0
        z = 0
        
        shapes = cmds.listRelatives(self.control, shapes = True)
        
        if self.aimAxis == "y":
            z = 90
            
        elif self.aimAxis == "z":
            y = -90
            
        for s in shapes:
            
            cmds.select("%s.cv[:]" % s)
            cmds.rotate(0, y, z, r = 1)
            cmds.select(clear = True)
            
    def __flip(self):
        
        '''
        
        '''
        
        shapes = cmds.listRelatives(self.control, shapes = True)
        
        for s in shapes:
            
            cmds.select("%s.cv[:]" % s)
        
            if self.aimAxis == "x":
                cmds.scale(-1, 1, 1, r = 1)
                
            if self.aimAxis == "y":
                cmds.scale(1, -1, 1, r = 1)
                
            if self.aimAxis == "z":
                cmds.scale(1, 1, -1, r = 1)
                
            cmds.select(clear = True)
            
                
    def __groupHier(self, obj):
    
        '''
        This procedure gets an input and groups it in order
        to zero out the transformations
        @param obj: the object to zero out
        @return: the offset group
        '''
        
        # Create Grouping Hierarchy
        splitName = obj.split("_")
        useName = ""
        
        for i in range(len(splitName)):
            
            useName = useName + str(splitName[i]) + "_"
            
        rootGrp = cmds.group(obj, name = str(useName) + "global_GRP")
        cmds.group(obj, name = str(useName) + "local_GRP")
        offset = cmds.group(obj, name = str(useName) + "offset_GRP")
        cnst = cmds.group(obj, name = str(useName) + "CNST")
        cmds.parent(obj, offset)
        cmds.parent(cnst, obj)
            
        return rootGrp
    

def importControl(fileName):
    
    '''
    Import control from file
    
    '''
    
    workspace = os.path.join(os.path.dirname( __file__ ), '..', 'assets')
    
    ctrlFile = os.path.join(workspace, '%s_CTRL.ma' % fileName)
    
    if not os.path.exists(ctrlFile):
        if showDialog( title = 'WARNING', message = 'Character %s control file not found.\n Please choose an existing control' % fileName, button=['ok'] ) == 'ok':
            return 'User cancelled'
    
    cmds.file(ctrlFile, i = True, dns = True)
        

def exportControl(fileName = None, ctrl = None):
    
    '''
    Exports control to file
    
    '''
    
    workspace = os.path.join(os.path.dirname( __file__ ), '..', 'assets')
    
    if fileName == None:
        fileName = str(cmds.ls(selection = True)[0])
    
    ctrlFile = os.path.join(workspace, '%s_CTRL.ma' % fileName)
    if os.path.exists(ctrlFile):
        if showDialog(title = 'WARNING', message = 'Character %s control file already exists. \n Overwrite File?' % fileName, button = ['yes', 'no']) != 'yes':
            return 'User cancelled'
        
    if ctrl == None:
        ctrl = str(cmds.ls(selection = True)[0])
        
    cmds.select(ctrl)
    cmds.file(ctrlFile, es = 1, f = 1, type = 'mayaAscii')
    
    
'''

from anomalia.core import controls as controls

ctrlToCreate = controls.Control(side = "rt", rigPart = "spine", function = "test", nodeType = "ctrl", size = 2, color = "red", aimAxis = "x", group = False, flip = False)
ctrlToCreate.crownCtrl()

################################################################

controls.exportControl(fileName = 'fileName', ctrl = 'nameOfFileToSave')

################################################################

controls.importControl(fileName = 'nameOfFileToImport')
'''