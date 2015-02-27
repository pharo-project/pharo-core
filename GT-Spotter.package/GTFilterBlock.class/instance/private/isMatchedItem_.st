isMatchedItem: anItem
	^ self matcher 
		ifNotNil: [ self matcher value: anItem value: self context ]
		ifNil: [ (self itemNameFor: anItem) includesSubstring: self query caseSensitive: self caseSensitive ]
		