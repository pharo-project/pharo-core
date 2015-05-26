fileItIn: aKeyboardEvent
	"File in the selection; invoked via a keyboard shortcut, -- for now, cmd-shift-G."

	UserManager default canDropOSFile ifFalse: [ ^ false ].
	self fileItIn.
	^ true