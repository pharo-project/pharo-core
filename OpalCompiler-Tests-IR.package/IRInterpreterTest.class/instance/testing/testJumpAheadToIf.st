testJumpAheadToIf
	| ir |
	ir := IRBuilderTest new testJumpAheadToIf.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error