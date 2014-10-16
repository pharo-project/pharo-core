checkTooManyLiterals: index
	index > 256 ifTrue: [self tooManyVars: 'literals (>256)']