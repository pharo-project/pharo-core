preconditions
preconditions
	^(RBCondition withBlock: [class notNil and: [class isMeta not]]
		errorString: className , ' is not a valid class name') 
			& (RBCondition isValidClassName: newName) 
			& (RBCondition isGlobal: newName in: self model) not