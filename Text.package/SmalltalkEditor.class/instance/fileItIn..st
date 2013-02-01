editing keys
fileItIn: aKeyboardEvent
	"File in the selection; invoked via a keyboard shortcut, -- for now, cmd-shift-G."

	UsersManager default currentUser canDropOSFile ifFalse: [ ^ false ].
	self fileItIn.
	^ true