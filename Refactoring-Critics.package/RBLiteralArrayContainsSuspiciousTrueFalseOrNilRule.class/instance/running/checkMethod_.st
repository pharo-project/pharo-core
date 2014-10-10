checkMethod: aMethod 
	| compiledLits parsedLits |
	compiledLits := aMethod allLiterals
		inject: OrderedCollection new
		into: [ :collection :literal |
			collection
				addAll: (self literalTrueFalseOrNilSymbolsIn: literal);
				yourself ].
	compiledLits size > 0 ifTrue: [ 
		parsedLits := OrderedCollection new.
		matcher 
			executeTree: aMethod parseTree
			initialAnswer: parsedLits.
		compiledLits size ~= parsedLits size ifTrue: [
			result addMethod: aMethod ] ]