testPushSelf
	| ir |
	ir := IRBuilderTest new testPushSelf.
	IRInterpreter new interpret: ir