testPushTempArgument
	| ir |
	ir := IRBuilderTest new testPushTempArgument.
	IRInterpreter new interpret: ir