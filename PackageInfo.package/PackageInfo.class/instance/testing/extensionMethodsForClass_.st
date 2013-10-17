extensionMethodsForClass: aClass
	^ (self extensionCategoriesForClass: aClass)
		gather: [:cat | ((aClass organization listAtCategoryNamed: cat) ifNil: [#()])
							collect: [:sel | self referenceForMethod: sel ofClass: aClass]]