parseNegatedNumber
	| token |
	(self nextToken isLiteral not or: [ self nextToken realValue isNumber not ])
		ifTrue: [ ^ self parserError: 'only numbers may be negated' ].
	token := RBLiteralToken value: self nextToken realValue negated start: currentToken start stop: nextToken stop.
	self step; step.
	^ self literalNodeClass literalToken: token
