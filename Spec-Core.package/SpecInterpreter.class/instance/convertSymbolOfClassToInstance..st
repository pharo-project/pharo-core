bindings
convertSymbolOfClassToInstance: aSymbol
	| symbol |
	
	symbol := self retrieveClassSymbolFor: aSymbol.
	
	^ (Smalltalk 
		at: symbol
		ifAbsent: [ ^ aSymbol ]) new