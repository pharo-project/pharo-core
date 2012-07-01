naming
categoryName
	|category|
	category := self class category.
	^ (category endsWith: '-Info')
		ifTrue: [category copyUpToLast: $-]
		ifFalse: [category]