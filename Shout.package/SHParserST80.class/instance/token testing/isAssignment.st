isAssignment
	^ currentToken = ':='
		or: [currentToken = '_']