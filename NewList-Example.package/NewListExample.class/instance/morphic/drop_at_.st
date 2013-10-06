drop: anItem at: anIndex

	rawList remove: anItem.
	rawList add: anItem beforeIndex: anIndex.
	self changed: #getItems