initialization
setNode: aProgramNode
	node := aProgramNode.
	node propertyAt: #lexicalScope put: self