visitor-double dispatching
acceptMethodNode: aMethodNode 
	self formatMethodPatternFor: aMethodNode.
	self formatMethodBodyFor: aMethodNode