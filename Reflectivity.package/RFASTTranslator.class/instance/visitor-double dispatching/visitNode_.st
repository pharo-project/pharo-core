visitNode: aNode
	methodBuilder mapToNode: aNode.
	aNode hasMetalinkInstead 
		ifTrue: [
			aNode preambles do: [ :pre | self visitNode: pre].
			super visitNode: aNode insteadHooks last]
		ifFalse: [super visitNode: aNode].
	self emitMetaLinkAfter: aNode.
	methodBuilder popMap