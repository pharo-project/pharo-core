*RPackage-SystemIntegration
importCategory: aCat forClass: aClass 
	"import all the methods of a category as defined in the receiver." 
	
		(aClass organization listAtCategoryNamed: aCat)
			do: [:each | self addMethod: (aClass >> each)]
	
	