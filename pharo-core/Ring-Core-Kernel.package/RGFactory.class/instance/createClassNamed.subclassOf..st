factory
createClassNamed: aSymbol subclassOf: aRGClassDefinition

	^(self createClassNamed: aSymbol) superclass: aRGClassDefinition