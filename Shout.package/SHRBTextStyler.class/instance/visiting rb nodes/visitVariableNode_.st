visitVariableNode: aVariableNode

	self 
		addStyle: (self resolveStyleFor: aVariableNode) 
		attribute: (TextVariableLink variableName: aVariableNode name)
		forNode: aVariableNode.
	
	