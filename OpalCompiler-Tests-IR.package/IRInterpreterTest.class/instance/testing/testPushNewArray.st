testPushNewArray
	| ir |
	ir := IRBuilderTest new testPushNewArray.
	IRInterpreter new interpret: ir