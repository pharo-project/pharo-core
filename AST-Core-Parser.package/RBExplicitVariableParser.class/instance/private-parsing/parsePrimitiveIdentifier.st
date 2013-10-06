parsePrimitiveIdentifier
	| token node |
	token := currentToken.
	self step.
	node := (self lookupVariableNodeClass: token value) identifierToken: token.
	self addCommentsTo: node.
	^node