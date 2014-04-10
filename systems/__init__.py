import os

importList = []

def getImportList():
    # Add any subdirectories you want to import into this list
    for module in []:
        importList.append( module )
        
    # Will automatically add any modules in the current directory to importList
    fileTypes = ['py', 'pyc', 'pyo'] 
    
    path = os.path.dirname(os.path.realpath(__file__))
    
    for module in os.listdir( path ):
        if not os.path.isfile( os.path.join(path, module) ):
            continue
        
        moduleData = module.split('.')

        if moduleData[0] == '__init__' or not moduleData[1] in fileTypes :
            continue
        if not moduleData[0] in importList:
            importList.append( moduleData[0] )
        
    del module
    return importList
        
getImportList()

for module in importList:
    mod = __import__(module, globals(), locals())
    reload(mod)

print 'systems imported successfully'