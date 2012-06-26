private-parsing
parsePrimitiveIdentifier
	| token node |
	token := currentToken.
	self step.
	node := self variableNodeClass identifierToken: token.
	self addCommentsTo: node.
	^node