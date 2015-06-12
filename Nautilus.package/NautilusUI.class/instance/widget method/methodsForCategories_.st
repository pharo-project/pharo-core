methodsForCategories: aCollection

	^ aCollection flatCollect: [:e | self methodsForCategory: e ]