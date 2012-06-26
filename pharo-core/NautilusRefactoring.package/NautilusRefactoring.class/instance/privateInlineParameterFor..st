private-method
privateInlineParameterFor: aMethod
	| arguments parameter parser |
	
	parser := RBParser new.
	parser errorBlock: [ :error :position | ^ #() ].
	parser initializeParserWith: aMethod sourceCode.
	arguments :=  parser parseMessagePattern argumentNames.
	arguments ifEmpty: [ ^ nil ].
	
	parameter := (UIManager default chooseFrom: arguments).
	parameter ifNil: [ ^ nil ].
	
	^ RBInlineParameterRefactoring
		model: environment
		inlineParameter: (arguments at: parameter ifAbsent: [ ^ nil ])
		in: aMethod methodClass
		selector: aMethod selector