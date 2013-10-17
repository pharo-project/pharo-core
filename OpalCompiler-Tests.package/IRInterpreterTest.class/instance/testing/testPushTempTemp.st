testPushTempTemp
	| ir |
	ir := IRBuilderTest new testPushTempTemp.
	IRInterpreter new interpret: ir