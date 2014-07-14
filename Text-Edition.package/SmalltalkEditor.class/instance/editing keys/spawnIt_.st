spawnIt: aKeyboardEvent
	"Triggered by Cmd-o; spawn a new code window, if it makes sense."

	UserManager default canBrowse ifFalse: [ ^ false ].
	self spawn.
	^ true