isMatchedItem: anItem
	^ self regex matches: (self itemNameFor: anItem)