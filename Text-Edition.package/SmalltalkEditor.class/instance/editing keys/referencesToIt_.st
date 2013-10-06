referencesToIt: aKeyboardEvent
	"Triggered by Cmd-N; browse references to the current selection"

	Smalltalk tools userManager canBrowse ifFalse: [ ^ false ].
	self referencesToIt.
	^ true