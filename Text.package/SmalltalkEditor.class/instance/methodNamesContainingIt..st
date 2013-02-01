editing keys
methodNamesContainingIt: aKeyboardEvent
	"Browse methods whose selectors containing the selection in their names"

	UsersManager default currentUser canBrowse ifFalse: [ ^ false ].
	self methodNamesContainingIt.
	^ true