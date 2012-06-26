menu
versionsMenu: aMenu
	"Fill aMenu with menu items appropriate to the receiver"

	aMenu title: 'Versions' translated.
	aMenu addStayUpItemSpecial.

	listIndex > 0 ifTrue:[
		(list size > 1 ) ifTrue: [ aMenu addTranslatedList: #(
			('Compare to current'		compareToCurrentVersion		'Compare selected version to the current version')
			('Compare to version...'	compareToOtherVersion		'Compare selected version to another selected version'))].
		"Note: Revert to selected should be visible for lists of length one for having the ability to revert to an accidentally deleted method"
		 aMenu addTranslatedList: #(
			('Revert to selected version'	fileInSelections					'Resubmit the selected version, so that it becomes the current version') )].

	aMenu addTranslatedList: #(
		('Remove from changes'		removeMethodFromChanges	'Remove this method from the current change set, if present')
		('Edit current method (O)'	openSingleMessageBrowser		'Open a single-message browser on the current version of this method')		
		-
		('Toggle diffing (D)'			toggleDiffing					'Toggle whether or not diffs should be shown here')
		('Update list'				reformulateList					'Reformulate the list of versions, in case it somehow got out of synch with reality')
		-
		('Senders (n)'				browseSenders					'Browse all senders of this selector')
		('Implementors (m)'			browseImplementors			'Browse all implementors of this selector')
		-
		('Help...'					offerVersionsHelp				'Provide an explanation of the use of this tool')).
											
	^aMenu