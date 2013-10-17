classesForClassTag: aSymbol
	"Returns the classes tagged using aSymbol"
	
	^ (self 
		classTagNamed: aSymbol 
		ifAbsent: [ ^ #() ])
		classes