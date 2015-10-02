iconNamed: aSymbol
	^ self 
		iconNamed: aSymbol 
		ifNone: [ self blankIcon ]