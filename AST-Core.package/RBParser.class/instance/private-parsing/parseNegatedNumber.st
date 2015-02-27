parseNegatedNumber
	(self nextToken isLiteralToken not or: [ self nextToken realValue isNumber not ])
		ifTrue: [ ^ self parserError: 'The ''-'' prefix works only for literal numbers (use #negated instead)' ].

	self step; step.
	^ self literalValueNodeClass 
			 	value: self nextToken realValue negated 
				start: currentToken start 
				stop: nextToken stop 
				source: currentToken value, nextToken source.