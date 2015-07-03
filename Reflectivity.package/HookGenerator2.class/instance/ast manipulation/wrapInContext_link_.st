wrapInContext: hook link: aLink
	^RBMessageNode 
		receiver: aLink asLiteralNode
		selector: #valueInContext:
		arguments: {self encloseInBlock: hook}
				

	