visitReturnNode: aReturnNode 

	valueTranslator visitNode: aReturnNode value.
	self emitMetaLinkBefore: aReturnNode.
	
	aReturnNode hasMetalinkInstead
				ifTrue: [ self emitMetaLinkInstead: aReturnNode ]
				ifFalse: [methodBuilder returnTop].
		
