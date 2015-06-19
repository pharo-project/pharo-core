visitVariableNode: aVariableNode
	self emitMetaLinkBefore: aVariableNode.
	aVariableNode binding emitValue: methodBuilder
	
	