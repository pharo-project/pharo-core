methodStringsContainingIt: aKeyboardEvent
	"Invoked from cmd-E -- open a browser on all methods holding string constants containing it."

	UserManager default canBrowse ifFalse: [ ^ false ].
	self methodStringsContainingit.
	^ true