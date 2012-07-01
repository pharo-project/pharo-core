testing
foreignExtensionMethodsForClass: aClass
	^ (self foreignExtensionCategoriesForClass: aClass)
		gather: [:cat | (aClass organization listAtCategoryNamed: cat)
						  collect: [:sel | self referenceForMethod: sel ofClass: aClass]]