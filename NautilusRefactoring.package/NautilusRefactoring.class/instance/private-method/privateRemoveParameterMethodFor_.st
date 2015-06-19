privateRemoveParameterMethodFor: aMethod
	^ RBRemoveParameterRefactoring
		model: environment
		removeParameter: (self chooseFrom: aMethod argumentNames)
		in: aMethod origin
		selector: aMethod selector