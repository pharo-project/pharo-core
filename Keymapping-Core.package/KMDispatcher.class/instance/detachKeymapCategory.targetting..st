building
detachKeymapCategory: aCategoryName targetting: anObject

	| categoryTarget |
	categoryTarget := self targets
		detect: [ :tgt | tgt target = anObject and: [ tgt category name = aCategoryName ] ]
		ifNone: [ self error: 'Category ', aCategoryName, ' is not attached to ', morph asString ].
	self targets remove: categoryTarget.