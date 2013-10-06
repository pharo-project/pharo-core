testPushThisContext
	| ir |
	ir := IRBuilderTest new testPushThisContext.
	IRInterpreter new interpret: ir