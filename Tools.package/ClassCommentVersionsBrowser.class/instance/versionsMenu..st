menu
versionsMenu: aMenu
	"Fill aMenu with menu items appropriate to the receiver"

	aMenu title: 'Versions'.
	aMenu addStayUpItemSpecial.
	^ aMenu addList: #(

		('Compare to current'		compareToCurrentVersion		'Compare selected version to the current version')
		('Revert to selected version'	fileInSelections					'Resubmit the selected version, so that it becomes the current version')
		('Remove from changes'		removeMethodFromChanges		'Remove this method from the current change set, if present')
		-
		('Toggle diffing (D)'			toggleDiffing					'Toggle whether or not diffs should be shown here')
		('Update list'				reformulateList					'Reformulate the list of versions, in case it somehow got out of synch with reality')
		-
		('Help...'					offerVersionsHelp				'Provide an explanation of the use of this tool'))
