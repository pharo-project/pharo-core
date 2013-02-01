editing keys
methodStringsContainingIt: aKeyboardEvent
	"Invoked from cmd-E -- open a browser on all methods holding string constants containing it."

	UsersManager default currentUser canBrowse ifFalse: [ ^ false ].
	self methodStringsContainingit.
	^ true