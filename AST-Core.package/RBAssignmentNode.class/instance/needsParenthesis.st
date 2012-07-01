testing
needsParenthesis
	^parent isNil 
		ifTrue: [false]
		ifFalse: [self precedence > parent precedence]