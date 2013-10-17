testInstVar
	| ir |
	ir := IRBuilderTest new testInstVar.
	IRInterpreter new interpret: ir