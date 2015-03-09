compile: aString
	| ast |
	ast := RBExplicitVariableParser parseExpression: aString.
	[ ast methodNode doSemanticAnalysisIn: ProtoObject ]
		on: OCUndeclaredVariableWarning do: [ :e | self error: 'Undeclared variable', e variableNode name ].
	^ ast