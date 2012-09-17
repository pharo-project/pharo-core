class tags
classNamesForClassTag: aSymbol
	"Returns the classes tagged using aSymbol"
	
	^ classTags at: aSymbol ifAbsent: [Array new]