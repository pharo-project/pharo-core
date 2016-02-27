basicCheck: aMethod
	| message |
	message := aMethod superMessages
		detect: [ :each | aMethod methodClass superclass isNil or: [ (aMethod methodClass superclass canUnderstand: each) not ] ]
		ifNone: [ aMethod selfMessages detect: [ :each | (aMethod methodClass allSelectors includes: each) not ] ifNone: [ nil ] ].
	^ message notNil