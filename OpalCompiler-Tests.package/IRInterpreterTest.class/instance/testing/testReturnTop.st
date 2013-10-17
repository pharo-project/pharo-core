testReturnTop
	| ir |
	ir := IRBuilderTest new testReturnTop.
	IRInterpreter new interpret: ir