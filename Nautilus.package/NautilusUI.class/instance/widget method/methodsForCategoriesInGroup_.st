methodsForCategoriesInGroup: aCollection

	| mthds |
	mthds := aCollection flatCollect: [:e | self methodsForCategoryInGroup: e ].
	^ mthds sort: [:a :b | a selector < b selector ]