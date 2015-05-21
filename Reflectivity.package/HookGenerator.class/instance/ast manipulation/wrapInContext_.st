wrapInContext: aNode
	^RBMessageNode 
		receiver: link asLiteralNode
		selector: #valueInContext:
		arguments: {self encloseInBlock: aNode}
				

	