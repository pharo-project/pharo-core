printing
printWithClosureAnalysisOn: strm indent: level precedence: outerPrecedence

	| parenthesize |
	parenthesize := precedence > outerPrecedence
		or: [outerPrecedence = 3 and: [precedence = 3 "both keywords"]].
	parenthesize
		ifTrue: [strm nextPutAll: '('.
				self printWithClosureAnalysisOn: strm indent: level.
				strm nextPutAll: ')']
		ifFalse: [self printWithClosureAnalysisOn: strm indent: level]