isMatchedItem: anItem
	^ self query match: (self itemFilterNameFor: anItem)