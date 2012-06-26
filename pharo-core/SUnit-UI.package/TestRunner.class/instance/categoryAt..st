accessing-categories
categoryAt: anIndex
	^ categoriesSelected includes: (categories at: anIndex ifAbsent: [ ^ false ]).