testPopTop
	| ir |
	ir := IRBuilderTest new testPopTop.
	IRInterpreter new interpret: ir