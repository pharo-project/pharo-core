testing
systemCategories
	^ self systemOrganization categories select: [:cat | self includesSystemCategory: cat]