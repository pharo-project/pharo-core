testPushTempTemp
	| ir |
	ir := IRBuilderTest new testPushTempTemp.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error