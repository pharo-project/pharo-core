visitSequenceNode: aSequenceNode
	self emitMetaLinkBefore: aSequenceNode. 
	aSequenceNode statements do: [:each | self visitNode: each].