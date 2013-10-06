spawnIt: aKeyboardEvent
	"Triggered by Cmd-o; spawn a new code window, if it makes sense."

	Smalltalk tools userManager canBrowse ifFalse: [ ^ false ].
	self spawn.
	^ true