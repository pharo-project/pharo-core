testPushTempArgument
	| ir |
	ir := IRBuilderTest new testPushTempArgument.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error