checkMethod: aContext 
	| message |
	message := aContext compiledMethod messages 
		detect: [ :each | (SystemNavigation default implementorsExistOf: each) not ]
		ifNone: 
			[ aContext compiledMethod superMessages 
				detect: 
					[ :each | 
					aContext selectedClass superclass isNil or: [ (aContext selectedClass superclass canUnderstand: each) not ] ]
				ifNone: 
					[ aContext compiledMethod selfMessages 
						detect: [ :each | (aContext selectedClass allSelectors includes: each) not ]
						ifNone: [ nil ] ] ].
	message notNil ifTrue: [
		result addSearchString: message.
		result 
			addClass: aContext selectedClass
			selector: aContext selector ]