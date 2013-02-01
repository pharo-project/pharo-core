editing keys
spawnIt: aKeyboardEvent
	"Triggered by Cmd-o; spawn a new code window, if it makes sense."

	UsersManager default currentUser canBrowse ifFalse: [ ^ false ].
	self spawn.
	^ true