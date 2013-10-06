testJumpAheadTo
	| ir |
	ir := IRBuilderTest new testJumpAheadTo.
	IRInterpreter new interpret: ir