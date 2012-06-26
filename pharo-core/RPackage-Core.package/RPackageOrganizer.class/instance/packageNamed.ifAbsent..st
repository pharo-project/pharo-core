accessing
packageNamed: aSymbol  ifAbsent: errorBlock

	^ packages at: aSymbol ifAbsent: errorBlock