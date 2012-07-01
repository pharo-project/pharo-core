accessing
start
	^parentheses isNil 
		ifTrue: [self startWithoutParentheses]
		ifFalse: [parentheses last first]