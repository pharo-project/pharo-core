visitor-double dispatching
acceptSequenceNode: aSequenceNode 
	self visitArguments: aSequenceNode temporaries.
	aSequenceNode statements do: [:each | self visitNode: each]