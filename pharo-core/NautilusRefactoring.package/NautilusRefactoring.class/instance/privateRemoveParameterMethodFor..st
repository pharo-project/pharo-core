private-method
privateRemoveParameterMethodFor: aMethod
	| arguments parameter parser |
	
	parser := RBParser new.
	parser errorBlock: [ :error :position | ^ #() ].
	parser initializeParserWith: aMethod sourceCode.
	arguments :=  parser parseMessagePattern argumentNames.
	arguments ifEmpty: [ ^ nil ].
	
	parameter := (UIManager default chooseFrom: arguments).
	parameter ifNil: [ ^ nil ].
	
	^ RBRemoveParameterRefactoring
		model: environment
		removeParameter: (arguments at: parameter ifAbsent: [ ^ nil ])
		in: aMethod methodClass
		selector: aMethod selector