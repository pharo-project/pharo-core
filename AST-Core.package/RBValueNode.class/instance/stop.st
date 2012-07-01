accessing
stop
	^parentheses isNil
		ifTrue: [self stopWithoutParentheses]
		ifFalse: [parentheses last last]