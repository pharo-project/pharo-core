methodNamesContainingIt: aKeyboardEvent
	"Browse methods whose selectors containing the selection in their names"

	self currentUser canBrowse ifFalse: [ ^ false ].
	self methodNamesContainingIt.
	^ true