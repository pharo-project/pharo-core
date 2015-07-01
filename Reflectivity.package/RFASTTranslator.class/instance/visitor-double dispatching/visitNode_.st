visitNode: aNode
	methodBuilder mapToNode: aNode.
	(aNode hasMetalinkAfter and: [ (effectTranslator hasSeen: aNode) not ])
		ifTrue: [ 
			effectTranslator recordSeen: aNode.
			self emitMetaLinkAfter: aNode.
			effectTranslator removeSeen: aNode ]
		ifFalse: [ 
			aNode hasMetalinkInstead
				ifTrue: [ self emitMetaLinkInstead: aNode ]
				ifFalse: [ super visitNode: aNode ] ].
	methodBuilder popMap