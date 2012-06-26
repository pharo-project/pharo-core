testing
testOrganizationDefinition
	| definition |
	definition := MCOrganizationDefinition categories: 
					(self mockPackage packageInfo systemCategories).
	writer visitOrganizationDefinition: definition.
	self assertContentsOf: stream match: self expectedOrganizationDefinition.
	self assertAllChunksAreWellFormed.