loadPackagesCategoriesInARestrictedEnvironment: env for: class

	^ self sortCategories: (model browsedEnvironment protocolsFor: class) forClass: class