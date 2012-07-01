protocol
retrieveDefaultClassSymbolFor: aSymbol

	^ self class bindings classSymbolFor: aSymbol ifAbsent: [ aSymbol ]