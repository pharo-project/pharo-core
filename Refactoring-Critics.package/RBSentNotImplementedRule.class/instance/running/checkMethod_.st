checkMethod: aMethod 
	| message |
	message := aMethod messages 
		detect: [ :each | (SystemNavigation default implementorsExistOf: each) not ]
		ifNone: 
			[ aMethod superMessages 
				detect: 
					[ :each | 
					aMethod methodClass superclass isNil or: [ (aMethod methodClass superclass canUnderstand: each) not ] ]
				ifNone: 
					[ aMethod selfMessages 
						detect: [ :each | (aMethod methodClass allSelectors includes: each) not ]
						ifNone: [ nil ] ] ].
	message notNil ifTrue: [
		result
			addSearchString: message;
			addMethod: aMethod ]