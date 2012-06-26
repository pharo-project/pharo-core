visitor-double dispatching
acceptSequenceNode: aSequenceNode 
	self formatTemporariesFor: aSequenceNode.
	self formatSequenceCommentsFor: aSequenceNode.
	self formatSequenceNodeStatementsFor: aSequenceNode