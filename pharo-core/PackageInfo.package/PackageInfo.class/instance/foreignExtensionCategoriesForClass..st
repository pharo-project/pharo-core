testing
foreignExtensionCategoriesForClass: aClass
	^ aClass organization categories select: [:cat | self isForeignClassExtension: cat]