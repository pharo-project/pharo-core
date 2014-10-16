checkTooManyLiterals: index
	index > 65536 ifTrue: [self tooManyVars: 'literals (>65536)']