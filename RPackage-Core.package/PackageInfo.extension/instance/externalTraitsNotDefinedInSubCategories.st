*RPackage-Core
externalTraitsNotDefinedInSubCategories
	
	
	^ Array streamContents: [:s | | behaviors |
		behaviors := self classesAndMetaClassesNotDefinedInSubCategories.
		Smalltalk allTraits do: [:trait |
			(behaviors includes: trait) ifFalse: [s nextPut: trait].
			(behaviors includes: trait classSide) ifFalse: [s nextPut: trait classSide]]].			