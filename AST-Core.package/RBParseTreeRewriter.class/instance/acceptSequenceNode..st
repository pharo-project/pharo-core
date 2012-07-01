visitor-double dispatching
acceptSequenceNode: aSequenceNode 
	aSequenceNode 
		temporaries: (self visitArguments: aSequenceNode temporaries).
	aSequenceNode statements: (aSequenceNode statements 
				collect: [:each | self visitNode: each])