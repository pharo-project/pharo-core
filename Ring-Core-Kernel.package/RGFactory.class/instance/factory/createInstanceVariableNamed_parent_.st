createInstanceVariableNamed: aSymbol parent: aRGClassDescriptionDefinition
	^((aRGClassDescriptionDefinition isMeta 
				ifTrue: [ RGClassInstanceVariableDefinition ]
				ifFalse:[  RGInstanceVariableDefinition ])
		named: aSymbol) parent: aRGClassDescriptionDefinition