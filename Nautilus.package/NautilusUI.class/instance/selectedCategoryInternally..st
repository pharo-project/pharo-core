accessing
selectedCategoryInternally: anObject

	self okToChange
		ifTrue: [
			self resetMethodsListSelection.
			anObject ifNotNil: [ self giveFocusTo: categoryWidget ].
			self changed: #sourceCode.
			^ true].
	^ false