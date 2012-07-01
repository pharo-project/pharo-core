category-method methods
selectedCategory: anObject

	self okToChange
		ifTrue: [
			methodWidget resetMethodCache.
			self model package: self selectedPackage class: self selectedClass category: anObject method: nil.
			self resetMethodsListSelection.
			anObject ifNotNil: [ self giveFocusTo: categoryWidget ].
			categoryWidget changed: #selectedCategoryIndex.
			self changed: #sourceCode.
			^ true].
	^ false