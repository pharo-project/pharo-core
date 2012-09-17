class tags
classesForClassTag: aSymbol
	"Returns the classes tagged using aSymbol"
	
	^ (self classNamesForClassTag: aSymbol) collect: [:e | self class environment at: e ]