testLiteralVariableClass
	| ir |
	ir := IRBuilderTest new testLiteralVariableClass.
	IRInterpreter new interpret: ir