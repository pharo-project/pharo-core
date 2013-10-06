addCoreMethod: aMethodReference
	| category |
	category := self baseCategoryOfMethod: aMethodReference.
	aMethodReference actualClass organization
		classify: aMethodReference selector
		under: category
		suppressIfDefault: false