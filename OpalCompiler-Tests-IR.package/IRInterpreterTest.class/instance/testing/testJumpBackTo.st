testJumpBackTo
	| ir |
	ir := IRBuilderTest new testJumpBackTo.
	IRInterpreter new interpret: ir