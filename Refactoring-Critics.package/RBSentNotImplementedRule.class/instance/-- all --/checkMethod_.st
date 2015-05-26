checkMethod: aMethod 
	| message |
	message := aMethod messages 
		"here we need to take the environemnt into account that the code critique is run on. Maybe environemnts need to cache implemnted symbols"
		detect: [ :each | ("SystemNavigation default implementorsExistOf: each"true ) not ]
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