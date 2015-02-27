isMatchedItem: anItem
	| itemName |
	itemName := self itemNameFor: anItem.
	^ self query allSatisfy: [ :fragment | 
		itemName includesSubstring: fragment caseSensitive: self caseSensitive ]