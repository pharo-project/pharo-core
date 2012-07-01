visitor-double dispatching
acceptPatternBlockNode: aRBPatternBlockNode 
	self 
		acceptBlockNode: aRBPatternBlockNode
		startBlockString: '`{'
		endBlockString: '}'