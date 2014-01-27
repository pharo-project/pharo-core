basicImportClass: aClass
	| protocols |
	
	self addClassDefinition: aClass.
	protocols := aClass organization realCategories 
		reject: [:each | (each first = $*) and: [ ( '*', self name asLowercase match: each asLowercase) not] ].
		"we reject all extensions except the ones that have the same name as the package - highly improbable but who knows"
	protocols do: [:each | self importProtocol: each forClass: aClass].