private
removeClass: aClass selector: aSelector onRule: aRule
	| result |
	result := aRule result.
	result isClassEnvironment
		ifTrue: [ result removeClass: aClass ].
	result isSelectorEnvironment
		ifTrue: [ result removeClass: aClass selector: aSelector ].
	result isVariableEnvironment
		ifFalse: [ ^ self ].
	aClass classVarNames do: [ :var | result removeClass: aClass classVariable: var ].
	aClass instVarNames do: [ :var | result removeClass: aClass instanceVariable: var ]