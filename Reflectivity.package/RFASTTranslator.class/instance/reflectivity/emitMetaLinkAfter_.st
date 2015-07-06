emitMetaLinkAfter: aNode
	| parentNode |
	
	"we need to move parts of this earlier: the block for the hook needs to be generated as part of the hook so we can do sematic analysis over it"
	
	parentNode := aNode parent.
	self visitBlockNode: ((RBBlockNode body: aNode asSequenceNode) scope: OCBlockScope new; parent: parentNode).
	self visitNode: (aNode afterHooks parent: aNode).
	methodBuilder send: #ensure:.