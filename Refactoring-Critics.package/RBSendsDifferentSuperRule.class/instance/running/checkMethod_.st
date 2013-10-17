checkMethod: aContext 
	| message |
	(message := aContext superMessages 
		detect: [ :each | each ~= aContext selector ]
		ifNone: [ nil ]) notNil ifTrue: 
		[ result addSearchString: message.
		result 
			addClass: aContext selectedClass
			selector: aContext selector ]