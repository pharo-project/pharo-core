instance creation
identifierToken: anIdentifierToken 
	^anIdentifierToken isPatternVariable 
		ifTrue: [super identifierToken: anIdentifierToken]
		ifFalse: [RBVariableNode identifierToken: anIdentifierToken]