visitVariableNode: aVariableNode
	self emitMetaLinkBefore: aVariableNode.
	aVariableNode hasMetalinkInstead
				ifTrue: [ self emitMetaLinkInstead: aVariableNode ]
				ifFalse: [ aVariableNode binding emitValue: methodBuilder ]
	
	