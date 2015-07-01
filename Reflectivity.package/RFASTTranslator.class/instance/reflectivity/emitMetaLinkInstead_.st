emitMetaLinkInstead: aNode
	self emitPreamble: aNode.
	super visitNode: aNode insteadHooks last.