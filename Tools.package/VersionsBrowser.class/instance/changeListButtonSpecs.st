init & update
changeListButtonSpecs

	^#(
		('Compare to current'
		compareToCurrentVersion
		'opens a separate window which shows the text differences between the selected version and the current version')

		('Revert'
		fileInSelections
		'reverts the method to the version selected')

		('Remove from changes'
		removeMethodFromChanges
		'remove this method from the current change set')

		('Help'
		offerVersionsHelp
		'further explanation about use of Versions browsers')
		)