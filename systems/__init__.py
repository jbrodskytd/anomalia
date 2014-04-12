import os
import anomalia as anom

#add subdirectories you want to import here
dirList = []

path = os.path.dirname(os.path.realpath(__file__))

importList = anom.getImportList( path, dirList )

for module in importList:
    mod = __import__(module, globals(), locals())
    reload(mod)
    print '%s imported successfully' % module