createInstanceVariableNamed: aSymbol parent: aRGClassDescriptionDefinition
	^(self 
		createInstanceOfClass: 
			(aRGClassDescriptionDefinition isMeta 
				ifTrue: [ RGClassInstanceVariableDefinition ]
				ifFalse:[  RGInstanceVariableDefinition ])
		named: aSymbol) parent: aRGClassDescriptionDefinition