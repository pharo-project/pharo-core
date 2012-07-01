methods
removeSelector: aSelector
	| catName |
	catName := self removedCategoryName.
	self organization addCategory: catName before: self organization categories first.
	self organization classify: aSelector under: catName.
	self sourceCodeAt: aSelector put:'methodWasRemoved' asText.