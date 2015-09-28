genForLiteralVariable
	^RBMessageNode 
		receiver: (RBVariableNode named: 'self')
		selector: #class