initialization
systemCategorySingleton

	| cls |
	cls := self selectedClass.
	^ cls ifNil: [Array new]
		ifNotNil: [Array with: cls category]