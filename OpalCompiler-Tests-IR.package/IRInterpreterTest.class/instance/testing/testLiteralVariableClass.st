testLiteralVariableClass
	| ir |
	ir := IRBuilderTest new testLiteralVariableClass.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error