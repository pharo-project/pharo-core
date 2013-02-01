private
removeClass: aClass  onRule: aRule
	| result |
	result := aRule result.
	result isVariableEnvironment
		ifTrue: [
			aClass classVarNames do: [ :var | result removeClass: aClass classVariable: var ].
			aClass instVarNames do: [ :var | result removeClass: aClass instanceVariable: var ]]
		ifFalse: [ result removeClass: aClass ]
	