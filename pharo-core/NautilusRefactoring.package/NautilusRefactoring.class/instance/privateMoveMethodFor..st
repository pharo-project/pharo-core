private-method
privateMoveMethodFor: aMethod
	| instVars instVar |
	instVars := aMethod methodClass instVarNames.
	instVars ifNil: [ ^ nil ].
	instVar := UIManager default chooseFrom: instVars.
	instVar ifNil: [ ^ nil ].
	
	
	^ RBMoveMethodRefactoring
		model: environment
		selector: aMethod selector
		class: aMethod methodClass
		variable: (instVars at: instVar ifAbsent: [ ^ nil ])