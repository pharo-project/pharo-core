loadPackagesCategoriesInSystemEnvironmentFor: class
	| group |
	
	group := self model selectedGroup.
	^ self sortCategories: class protocols forClass: class