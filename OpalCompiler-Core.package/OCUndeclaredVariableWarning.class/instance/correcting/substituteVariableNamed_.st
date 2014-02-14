substituteVariableNamed: newVariableName 
    node substituteVariableNamed: newVariableName. 
    self requestor setText: (node methodNode newSource).
	^ (node owningScope lookupVar: newVariableName)
		ifNil: [self error: 'should be found'].