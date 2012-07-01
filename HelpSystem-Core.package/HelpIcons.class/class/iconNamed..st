accessing
iconNamed: aSymbol

	^self icons at: aSymbol ifAbsentPut: [self perform: aSymbol]