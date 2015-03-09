metaAwareHook
	^RBMessageNode 
		receiver: self asLiteralNode
		selector: #valueInContext:
		arguments: {self encloseInBlock: self hook}
				

	