visitNode: aNode
	methodBuilder mapToNode: aNode.
	super visitNode: aNode.
	self emitMetaLinkAfter: aNode.
	methodBuilder popMap