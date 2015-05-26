referencesToIt: aKeyboardEvent
	"Triggered by Cmd-N; browse references to the current selection"

	UserManager default canBrowse ifFalse: [ ^ false ].
	self referencesToIt.
	^ true