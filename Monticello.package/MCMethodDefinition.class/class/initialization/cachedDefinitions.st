cachedDefinitions
	^ Definitions 
		ifNil: [ Definitions := WeakIdentityKeyDictionary new ]