checkMethod: aContext 
	| compiledLits parsedLits |
	compiledLits := aContext compiledMethod allLiterals
		inject: OrderedCollection new
		into: [ :collection :literal |
			collection
				addAll: (self literalTrueFalseOrNilSymbolsIn: literal);
				yourself ].
	compiledLits size > 0 ifTrue: [ 
		parsedLits := OrderedCollection new.
		matcher 
			executeTree: aContext compiledMethod parseTree
			initialAnswer: parsedLits.
		compiledLits size ~= parsedLits size ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector ] ]