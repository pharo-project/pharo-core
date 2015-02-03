searchField: aMorph

	searchField ifNotNil: [self removeBrick: searchField].
	searchField := aMorph.
	
	self themer spotterThemer searchFieldStyleFor: searchField.
	
	searchField takeKeyboardFocus.
	
	self addBrickBack: searchField