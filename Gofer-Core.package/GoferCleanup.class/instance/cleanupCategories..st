cleaning
cleanupCategories: aWorkingCopy
	aWorkingCopy packageInfo systemCategories do: [ :category |
		(Smalltalk organization classesInCategory: category) isEmpty
			ifTrue: [ Smalltalk organization removeSystemCategory: category ] ]