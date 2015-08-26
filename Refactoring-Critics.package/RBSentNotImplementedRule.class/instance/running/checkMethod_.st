checkMethod: aMethod 
	| message |
	self flag: #TODO. "This needs to be fixed"
	
	"The logic is wrong: #messages contains self and super messages, too.
	For now this rule just checks for not existing super and self sends,
	as checking non-existing senders is too slow.
	What needs to be done is 
	
	1. split the rule in two: super/self and unsent in general (but disable that as it is too slow)
	2. speed up by caching
	3. enable general unsent checking
	
	"
	
	message := #() "aMethod messages"
		"here we need to take the environemnt into account that the code critique is run on. Maybe environemnts need to cache implemnted symbols"
		detect: [ :each | ("SystemNavigation default implementorsExistOf: each"true ) not ]
		ifNone: 
			[aMethod methodClass isTrait ifFalse: [  
			 aMethod superMessages 
				detect: 
					[ :each | 
					aMethod methodClass superclass isNil or: [ (aMethod methodClass superclass canUnderstand: each) not ] ]
				ifNone: 
					[ aMethod selfMessages 
						detect: [ :each | (aMethod methodClass allSelectors includes: each) not ]
						ifNone: [ nil ] ] ] ] .
	message notNil ifTrue: [
		result
			addSearchString: message;
			addMethod: aMethod ]