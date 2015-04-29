wrapInContext: aNode
	^RBMessageNode 
		receiver: self asLiteralNode
		selector: #valueInContext:
		arguments: {self encloseInBlock: aNode}
				

	