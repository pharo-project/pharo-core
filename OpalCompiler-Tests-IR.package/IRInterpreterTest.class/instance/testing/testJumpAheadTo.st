testJumpAheadTo
	| ir |
	ir := IRBuilderTest new testJumpAheadTo.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error