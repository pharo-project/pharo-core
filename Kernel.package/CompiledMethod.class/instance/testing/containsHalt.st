containsHalt

	| haltSelectors |
	
	haltSelectors := #( halt halt: halt:onCount: haltIf: haltIfNil haltOnCount: haltOnce).
	
	self literalsDo: [ :lit |
		(lit isSymbol and: [ haltSelectors includes: lit ]) 
			ifTrue: [ ^ self messages includesAny: haltSelectors ]
	].

	^ false 
	
