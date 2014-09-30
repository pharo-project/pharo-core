methodStringsContainingIt: aKeyboardEvent
	"Invoked from cmd-E -- open a browser on all methods holding string constants containing it."

	self currentUser canBrowse ifFalse: [ ^ false ].
	self methodStringsContainingit.
	^ true