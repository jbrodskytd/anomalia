from maya import cmds


def showDialog( title, message, button=[] ):
    '''
    Shows an error dialog for the user.
    Supply two strings, a title and a message. The message accepts '\n' to break lines.
    If a list of buttons is supplied, the function returns the user input.
    '''
    ret = cmds.confirmDialog( title=title, message=message, button=button )
    if button != []:
        return ret