removeClassTag: aSymbol
	"Remove the class tag from the receiver."
	
	classTags removeKey: aSymbol ifAbsent: [nil].