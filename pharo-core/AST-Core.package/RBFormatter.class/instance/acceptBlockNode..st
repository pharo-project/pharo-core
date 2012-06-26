visitor-double dispatching
acceptBlockNode: aBlockNode 
	self 
		acceptBlockNode: aBlockNode
		startBlockString: '['
		endBlockString: ']'