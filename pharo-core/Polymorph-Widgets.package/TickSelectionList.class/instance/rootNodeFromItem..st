tree build
rootNodeFromItem: anItem

	anItem addDependent: self.
	^ super rootNodeFromItem: anItem