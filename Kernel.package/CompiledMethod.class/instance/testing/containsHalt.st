containsHalt

	2 to: self numLiterals - 1 do: [ :index | 
		
		| lit |
		
		lit := self objectAt: index.
				
		((lit isKindOf: Symbol) and: [ 
			 #( halt halt: halt:onCount: haltIf: haltIfNil haltOnCount: haltOnce) includes: lit 
		]) ifTrue: [ ^ true ]
	].

	^ false
	