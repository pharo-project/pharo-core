parseNegatedNumber
	| token |
	(self nextToken isLiteralToken not or: [ self nextToken realValue isNumber not ])
		ifTrue: [ ^ self parserError: 'The ''-'' prefix works only for literal numbers (use #negated instead)' ].
	token := RBLiteralToken value: self nextToken realValue negated start: currentToken start stop: nextToken stop.
	self step; step.
	^ self literalNodeClass literalToken: token
