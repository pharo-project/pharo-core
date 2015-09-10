visitSequenceNode: aSequenceNode
	self emitMetaLinkBefore: aSequenceNode.
	self emitPrepareLinkAfter: aSequenceNode.
	aSequenceNode statements do: [:each | self visitNode: each].
	self emitMetaLinkAfter: aSequenceNode.
	aSequenceNode hasMetalinkAfter ifTrue: [aSequenceNode parent isMethod 
			ifTrue: [methodBuilder returnTop]
			ifFalse: [methodBuilder popTop]]