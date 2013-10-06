createInstanceVariableNamed: aSymbol parent: aRGClassDescriptionDefinition
	^(self 
		createInstanceOfClass: 
			(aRGClassDescriptionDefinition isMeta 
				ifTrue: [ self classInstanceVariableClass ]
				ifFalse:[ self instanceVariableClass ])
		named: aSymbol) parent: aRGClassDescriptionDefinition