privateInlineParameterFor: aMethod
	| arguments parameter |
	arguments :=  aMethod argumentNames ifEmpty: [ ^ nil ].
	parameter := (UIManager default chooseFrom: arguments) ifNil: [ ^ nil ].
	
	^ RBInlineParameterRefactoring
		model: environment
		inlineParameter: (arguments at: parameter ifAbsent: [ ^ nil ])
		in: aMethod methodClass
		selector: aMethod selector