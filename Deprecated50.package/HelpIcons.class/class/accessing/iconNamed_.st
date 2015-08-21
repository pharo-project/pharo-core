iconNamed: aSymbol
	self deprecated: 'Use Smalltalk ui icons ... for help icons now'.
	^self icons at: aSymbol ifAbsentPut: [self perform: aSymbol]