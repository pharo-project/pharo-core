serialize/materialize
materializeGlobalAssociationFrom: aDecoder

	| globalName |
	globalName := aDecoder nextEncodedString asSymbol.
	^Smalltalk globals 
		associationAt: globalName
		ifAbsent: [ FLGlobalNotFound signalWithName: globalName ]
