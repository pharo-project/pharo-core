*Spec-Builder
retrieveClassSymbolFor: aSymbol

	^ self bindings classSymbolFor: aSymbol ifAbsent: [ aSymbol ]