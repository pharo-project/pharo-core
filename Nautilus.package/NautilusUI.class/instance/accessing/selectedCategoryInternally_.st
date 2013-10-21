selectedCategoryInternally: anObject

	self resetMethodsListSelection.
	anObject ifNotNil: [ self giveFocusTo: categoryWidget ].
	self changed: #sourceCodeFrom: