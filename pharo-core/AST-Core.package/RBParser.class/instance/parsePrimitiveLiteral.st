private-parsing
parsePrimitiveLiteral
	| token |
	token := currentToken.
	self step.
	^self literalNodeClass literalToken: token