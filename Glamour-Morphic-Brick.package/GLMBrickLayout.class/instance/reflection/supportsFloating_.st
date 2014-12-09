supportsFloating: aSymbol
	
	aSymbol = #none ifTrue: [ ^ false ].
	
	^ self respondsTo: (self floatingMethodFor: aSymbol)