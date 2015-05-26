codeInst: int 
	^ RBVariableNode named: (method methodClass allInstVarNames at: int + 1)