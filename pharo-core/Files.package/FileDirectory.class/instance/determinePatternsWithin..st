enumeration
determinePatternsWithin: tokens
	"Private.
	Answer a list of directory entries which match the token patternStrings.
	Each pattern can include a '*' or '#' as wildcards - see String>>match:"
	
	| recursivePatterns |
	recursivePatterns := tokens 
		select: [:each | each beginsWith: '**/'] 
		thenCollect: [:each | each copyReplaceAll: '**/' with: ''].
	^ (tokens reject: [:each | each beginsWith: '**/']) , recursivePatterns.

