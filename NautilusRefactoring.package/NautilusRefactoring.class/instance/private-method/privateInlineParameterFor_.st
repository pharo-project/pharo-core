privateInlineParameterFor: aMethod
	^ RBInlineParameterRefactoring
		model: environment
		inlineParameter: (self chooseFrom: (aMethod argumentNames))
		in: aMethod methodClass
		selector: aMethod selector