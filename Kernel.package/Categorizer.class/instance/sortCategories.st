accessing
sortCategories
	| privateCategories publicCategories newCategories |

	privateCategories := self categories select:
		[:one | (one findString: 'private' startingAt: 1 caseSensitive: false) = 1].
	publicCategories := self categories copyWithoutAll: privateCategories.
	newCategories := publicCategories asSortedCollection asOrderedCollection
		addAll: privateCategories asSortedCollection;
		asArray.
	self categories: newCategories