importClass: aClass 
	"import a class already created but not attached to a package to the receiver. 
	Handle also *- convention. Methods defined in *category are not added to the package.
	Pay attention that it will not import anything from the metaClass side
	"
	
	| protocols |
	self addClassDefinition: aClass.
	protocols := aClass organization realCategories 
		reject: [:each | (each first = $*) and: [ ( '*', self name asLowercase match: each asLowercase) not] ].
		"we reject all extensions except the ones that have the same name as the package - highly improbable but who knows"
	protocols do: [:each | self importProtocol: each forClass: aClass]
	
	