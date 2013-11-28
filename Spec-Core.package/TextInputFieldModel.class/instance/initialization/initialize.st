initialize

	super initialize.
	
	ghostText := '' asValueHolder.
	acceptOnCR := true asValueHolder.
	entryCompletion := self defaultEntryCompletion asValueHolder.
	isEncrypted := false asValueHolder.
	
	ghostText  whenChangedDo: [:txt | self widget ifNotNil: [:w | w ghostText: txt ]].
	acceptOnCR whenChangedDo: [:bool | self widget ifNotNil: [:w | w acceptOnCR: bool ]].
	isEncrypted whenChangedDo: [:bool | self widget ifNotNil: [:w | w encrypted: bool ]].