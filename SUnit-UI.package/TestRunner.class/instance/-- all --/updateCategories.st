updateCategories
	categories := self findCategories.
	categoryIndex := 0.
	categoriesSelected := categoriesSelected isNil
		ifTrue: [ Set new ]
		ifFalse: [
			categoriesSelected
				select: [ :each | categories includes: each ] ].
	self changed: #categoryList; changed: #categorySelected.