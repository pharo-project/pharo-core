system category list
systemCategorySingleton

	| cat |
	cat := self selectedSystemCategoryName.
	^ cat ifNil: [Array new]
		ifNotNil: [Array with: cat]