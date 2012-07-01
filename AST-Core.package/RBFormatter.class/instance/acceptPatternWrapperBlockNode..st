visitor-double dispatching
acceptPatternWrapperBlockNode: aRBPatternWrapperBlockNode 
	self visitNode: aRBPatternWrapperBlockNode wrappedNode.
	self 
		acceptBlockNode: aRBPatternWrapperBlockNode
		startBlockString: '`{'
		endBlockString: '}'