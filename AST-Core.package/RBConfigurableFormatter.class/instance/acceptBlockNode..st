visitor-double dispatching
acceptBlockNode: aBlockNode
	self bracketWith: '[]' around: [self formatBlock: aBlockNode]