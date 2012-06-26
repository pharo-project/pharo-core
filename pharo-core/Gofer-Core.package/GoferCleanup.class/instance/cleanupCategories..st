cleaning
cleanupCategories: aWorkingCopy
	aWorkingCopy packageInfo systemCategories do: [ :category |
		(SystemOrganization goferClassesInCategory: category) isEmpty
			ifTrue: [ SystemOrganization removeSystemCategory: category ] ]