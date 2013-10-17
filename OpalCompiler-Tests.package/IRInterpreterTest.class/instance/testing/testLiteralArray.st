testLiteralArray
	| ir |
	ir := IRBuilderTest new testLiteralArray.
	IRInterpreter new interpret: ir