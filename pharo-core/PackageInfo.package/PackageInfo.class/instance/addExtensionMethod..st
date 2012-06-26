modifying
addExtensionMethod: aMethodReference
	| category |
	category := self baseCategoryOfMethod: aMethodReference.
	aMethodReference actualClass organization
		classify: aMethodReference selector
		under: self methodCategoryPrefix, '-', category