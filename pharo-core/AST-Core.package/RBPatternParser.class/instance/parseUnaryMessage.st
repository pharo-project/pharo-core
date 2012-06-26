private-parsing
parseUnaryMessage
	| node |
	node := self parsePrimitiveObject.
	self addCommentsTo: node.
	
	[currentToken isLiteralToken ifTrue: [self patchLiteralMessage].
	currentToken isPatternBlock 
		ifTrue: 
			[node := (self parsePatternBlock: RBPatternWrapperBlockNode)
						wrappedNode: node;
						yourself].
	currentToken isIdentifier] 
			whileTrue: [node := self parseUnaryMessageWith: node].
	self addCommentsTo: node.
	^node