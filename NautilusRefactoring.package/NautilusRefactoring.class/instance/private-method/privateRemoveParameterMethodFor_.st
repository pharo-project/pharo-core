privateRemoveParameterMethodFor: aMethod
	| arguments parameter |
	
	arguments :=  aMethod argumentNames ifEmpty: [ ^ nil ].
	parameter := (UIManager default chooseFrom: arguments) ifNil: [ ^ nil ].
	
	^ RBRemoveParameterRefactoring
		model: environment
		removeParameter: (arguments at: parameter ifAbsent: [ ^ nil ])
		in: aMethod origin
		selector: aMethod selector