privateMoveMethodFor: aMethod
	^ RBMoveMethodRefactoring
		model: environment
		selector: aMethod selector
		class: aMethod methodClass
		variable: (self chooseFrom:  aMethod methodClass instVarNames)