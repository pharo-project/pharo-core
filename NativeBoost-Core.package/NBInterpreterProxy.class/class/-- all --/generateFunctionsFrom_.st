generateFunctionsFrom: data
	| i stream minorV functions |
	
	functions := IdentityDictionary new.
	
	i := 0.
	stream := data readStream.
	minorV := 0.
	[ stream atEnd ] whileFalse: [ | val |
		val := stream next.
		val isInteger ifTrue: [ minorV := val ]
			ifFalse: [
				(functions includesKey: val) ifTrue: [ self error: 'duplicated function!!' ].
				functions at: val put: (
					NBProxyFunction new selector: val; parseArguments: stream next; index: i; 
					majorVersion: 1; minorVersion: minorV;	requiresAlignment: (self safeNoAlignFunctions includes: val) not; yourself ).
				i := i + 1. ]
	].
	^ functions