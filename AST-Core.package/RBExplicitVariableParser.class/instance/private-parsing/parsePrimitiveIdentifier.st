parsePrimitiveIdentifier
	| token node |
	token := currentToken.
	self step.
	node := (self lookupVariableNodeClass: token value) identifierNamed: token value at: token start.
	self addCommentsTo: node.
	^node