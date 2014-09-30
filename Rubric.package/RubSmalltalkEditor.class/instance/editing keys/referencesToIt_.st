referencesToIt: aKeyboardEvent
	"Triggered by Cmd-N; browse references to the current selection"

	self currentUser canBrowse ifFalse: [ ^ false ].
	self referencesToIt.
	^ true