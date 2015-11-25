iconBlock: aNode
	^[ :seg :event | 
		Breakpoint removeFrom: aNode.
		seg delete]