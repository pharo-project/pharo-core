computeSpecFrom: aSymbol selector: aSelector
	| instance |

	instance := (aSymbol isSymbol and: [ aSymbol ~= #model ])
		ifTrue: [ | result |
			result := self convertSymbolOfClassToInstance: aSymbol.
			aSymbol == #ContainerModel
				ifTrue: [ result := result buildAdapterWithSpec ].
			result ]
		ifFalse: [ self class private_interpretASpec: aSymbol model: model selector: aSelector ].
		
	^ SpecWrapper
		instance: instance
		selector: aSelector