testing
needsParenthesis
	^parent isNil 
		ifTrue: [false]
		ifFalse: 
			[self precedence > parent precedence 
				or: [self precedence = parent precedence and: [self isUnary not]]]