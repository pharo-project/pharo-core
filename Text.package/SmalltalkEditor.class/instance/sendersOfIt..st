editing keys
sendersOfIt: aKeyboardEvent
	"Triggered by Cmd-n; browse implementors of the selector represented by the current selection, if plausible. 2/1/96 sw"

	UsersManager default currentUser canBrowse ifFalse: [ ^ false ].
	self sendersOfIt.
	^ true