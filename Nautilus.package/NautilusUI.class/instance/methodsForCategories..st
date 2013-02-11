widget - method
methodsForCategories: aCollection

	^ aCollection gather: [:e | self methodsForCategory: e ]