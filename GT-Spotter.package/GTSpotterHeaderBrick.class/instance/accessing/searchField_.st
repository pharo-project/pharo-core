searchField: aMorph

	searchField ifNotNil: [self removeBrick: searchField].
	searchField := aMorph asBrick.
	
	self themer spotterThemer searchFieldStyleFor: searchField.
	
	searchField morph takeKeyboardFocus.
	
	self addBrickBack: searchField