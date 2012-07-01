private
methodsForCategoriesInGroup: aCollection

	| mthds |
	mthds := aCollection gather: [:e | self methodsForCategoryInGroup: e ].
	^ mthds sort: [:a :b | a selector < b selector ]