testJumpAheadToIf
	| ir |
	ir := IRBuilderTest new testJumpAheadToIf.
	IRInterpreter new interpret: ir