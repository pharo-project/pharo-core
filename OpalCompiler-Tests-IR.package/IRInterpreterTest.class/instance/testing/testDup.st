testDup
	| ir |
	ir := IRBuilderTest new testDup.
	IRInterpreter new interpret: ir