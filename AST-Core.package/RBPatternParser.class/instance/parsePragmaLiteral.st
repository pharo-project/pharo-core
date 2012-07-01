private-parsing
parsePragmaLiteral
	| node |
	currentToken isPatternBlock 
		ifTrue: [ ^ self parsePatternBlock: RBPatternBlockNode ].
	(currentToken isIdentifier and: [ currentToken isPatternVariable ]) ifTrue: [
		node := self variableNodeClass identifierToken: currentToken.
		node isLiteralNode 
			ifFalse: [ self parseError: 'Literal pattern expected' ].
		self step.
		currentToken isPatternBlock ifTrue: [
			node := (self parsePatternBlock: RBPatternWrapperBlockNode)
				wrappedNode: node;
				yourself ].
		^ node ].
	^ super parsePragmaLiteral