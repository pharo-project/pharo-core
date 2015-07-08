visitLiteralArrayNode: aRBLiteralArrayNode 
	self emitMetaLinkBefore: aRBLiteralArrayNode.
	methodBuilder pushLiteral: aRBLiteralArrayNode value.
