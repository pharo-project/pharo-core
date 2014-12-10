searchField: aMorph

	searchField ifNotNil: [self removeBrick: searchField].
	searchField := aMorph.
	
	self theme spotterWidgetThemer searchFieldStyleFor: searchField.
	
	searchField takeKeyboardFocus.
	
	self addBrickBack: searchField