loadPackagesCategoriesInARestrictedEnvironment: env for: class
	| group |
	
	group := self model selectedGroup.
	^ self sortCategories: (model browsedEnvironment protocolsFor: class) forClass: class