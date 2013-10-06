shutDown
	Smalltalk os isMacOS
		ifTrue: [ NetworkSystemSettings useHTTPProxy: false ]
	
