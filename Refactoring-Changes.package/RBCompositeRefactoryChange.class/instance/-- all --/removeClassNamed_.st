removeClassNamed: aSymbol 
	^ self addChange: (RBRemoveClassChange removeClassName: aSymbol)