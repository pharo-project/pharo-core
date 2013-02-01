editing keys
exploreIt: aKeyboardEvent
	"Explore the selection -- invoked via cmd-shift-I.  If there is no current selection, use the current line."
	
	UsersManager default currentUser canInspect ifFalse: [ ^ false ].
	self exploreIt.
	^ true