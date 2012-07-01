running
checkMethod: aContext 
	| message |
	message := aContext messages 
		detect: [ :each | (aContext implements: each) not ]
		ifNone: 
			[ aContext superMessages 
				detect: 
					[ :each | 
					aContext selectedClass superclass isNil or: [ (aContext selectedClass superclass canUnderstand: each) not ] ]
				ifNone: 
					[ aContext selfMessages 
						detect: [ :each | (aContext selectedClass canUnderstand: each) not ]
						ifNone: [ nil ] ] ].
	message notNil ifTrue: 
		[ result addSearchString: message.
		result 
			addClass: aContext selectedClass
			selector: aContext selector ]