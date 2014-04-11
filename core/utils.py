from maya import cmds


def showDialog( title, message ):
    '''
    Shows an error dialog for the user.
    Supply two strings, a title and a message. The message accepts '\n' to break lines.
    '''
    cmds.confirmDialog( title=title, message=message )