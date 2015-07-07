genForRBProgramNode
	^RBMessageNode 
		receiver: (RBVariableNode named: 'self')
		selector: #class