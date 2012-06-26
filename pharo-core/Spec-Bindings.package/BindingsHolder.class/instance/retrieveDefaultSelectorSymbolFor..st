protocol
retrieveDefaultSelectorSymbolFor: aSymbol

	^ self class bindings selectorSymbolFor: aSymbol ifAbsent: [ aSymbol ]