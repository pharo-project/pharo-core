visitLiteralNode: aLiteralNode
	self emitMetaLinkBefore: aLiteralNode.
	methodBuilder pushLiteral: aLiteralNode value.
