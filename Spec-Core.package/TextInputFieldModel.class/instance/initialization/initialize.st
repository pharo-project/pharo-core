initialize

	super initialize.
	
	ghostText := '' asValueHolder.
	acceptOnCR := true asValueHolder.
	entryCompletion := self defaultEntryCompletion asValueHolder.
	isEncrypted := false asValueHolder.
	
	ghostText  whenChangedDo: [ :txt | self changed: #ghostText: with: { txt } ].
	acceptOnCR whenChangedDo: [ :bool | self changed: #acceptOnCR: with: { bool } ].
	isEncrypted whenChangedDo: [ :bool | self changed: #encrypted: with: { bool } ].