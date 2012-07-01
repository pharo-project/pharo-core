as yet unclassified
quickFillWithCategoryOf: cls
	(self classesInCategory: cls theNonMetaClass category) do: [:e | self quickFillWithClass: e]