initialize

	super initialize.
	
	ghostText := '' asReactiveVariable.
	acceptOnCR := true asReactiveVariable.
	entryCompletion := self defaultEntryCompletion asReactiveVariable.
	isEncrypted := false asReactiveVariable.
	
	ghostText  whenChangedDo: [ :txt | self changed: #ghostText: with: { txt } ].
	acceptOnCR whenChangedDo: [ :bool | self changed: #acceptOnCR: with: { bool } ].
	isEncrypted whenChangedDo: [ :bool | self changed: #encrypted: with: { bool } ].