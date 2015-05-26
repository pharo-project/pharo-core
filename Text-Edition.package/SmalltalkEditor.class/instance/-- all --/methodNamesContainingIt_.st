methodNamesContainingIt: aKeyboardEvent
	"Browse methods whose selectors containing the selection in their names"

	UserManager default canBrowse ifFalse: [ ^ false ].
	self methodNamesContainingIt.
	^ true