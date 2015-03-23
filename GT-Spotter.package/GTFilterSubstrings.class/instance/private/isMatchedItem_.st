isMatchedItem: anItem
	| itemName |
	itemName := self itemFilterNameFor: anItem.
	^ self query allSatisfy: [ :fragment | 
		itemName includesSubstring: fragment caseSensitive: self caseSensitive ]