sendersOfIt: aKeyboardEvent
	"Triggered by Cmd-n; browse implementors of the selector represented by the current selection, if plausible. 2/1/96 sw"

	Smalltalk tools userManager canBrowse ifFalse: [ ^ false ].
	self sendersOfIt.
	^ true