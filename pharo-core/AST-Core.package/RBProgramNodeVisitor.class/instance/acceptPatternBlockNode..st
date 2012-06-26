visitor-double dispatching
acceptPatternBlockNode: aRBPatternBlockNode 
	self visitArguments: aRBPatternBlockNode arguments.
	self visitNode: aRBPatternBlockNode body