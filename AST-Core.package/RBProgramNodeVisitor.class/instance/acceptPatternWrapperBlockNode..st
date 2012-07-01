visitor-double dispatching
acceptPatternWrapperBlockNode: aRBPatternWrapperBlockNode 
	self visitNode: aRBPatternWrapperBlockNode wrappedNode.
	self visitArguments: aRBPatternWrapperBlockNode arguments.
	self visitNode: aRBPatternWrapperBlockNode body