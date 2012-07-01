class initialization
cachedDefinitions
	Definitions ifNil: [ Definitions := WeakIdentityKeyDictionary new ].
	^ Definitions