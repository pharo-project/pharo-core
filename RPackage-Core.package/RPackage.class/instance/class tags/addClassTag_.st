addClassTag: aSymbol
	"Add the class tag from the receiver, if already added do nothing."
	
	classTags at: aSymbol ifAbsentPut: [Set new] 