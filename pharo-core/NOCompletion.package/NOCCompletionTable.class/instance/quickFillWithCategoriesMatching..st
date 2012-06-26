as yet unclassified
quickFillWithCategoriesMatching: pattern
	(Smalltalk organization categoriesMatching: pattern) do: [:category | 
		(self classesInCategory: category) do: [:e | self quickFillWithClass: e]]