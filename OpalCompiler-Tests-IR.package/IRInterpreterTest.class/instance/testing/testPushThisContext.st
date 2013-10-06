testPushThisContext
	| ir |
	ir := IRBuilderTest new testPushThisContext.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error