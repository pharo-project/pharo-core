visitNode: aNode
	| parentNode |
	parentNode := aNode parent.

	methodBuilder mapToNode: aNode.
	(aNode hasMetalinkAfter and: [ (effectTranslator hasSeen: aNode) not ])
		ifTrue: [
			effectTranslator recordSeen: aNode.	
			self visitBlockNode: ((RBBlockNode body: aNode asSequenceNode) scope: OCBlockScope new; parent: parentNode).
			self visitBlockNode: ((RBBlockNode body: (RBSequenceNode statements: aNode afterHooks flattened)) 
									scope: OCBlockScope new; parent: aNode).
			methodBuilder send: #ensure:.
			effectTranslator removeSeen: aNode]
		ifFalse: [
	aNode hasMetalinkInstead 
		ifTrue: [self emitMetaLinkInstead: aNode]
		ifFalse: [super visitNode: aNode]].
	methodBuilder popMap