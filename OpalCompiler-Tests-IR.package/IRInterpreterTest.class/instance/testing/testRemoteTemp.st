testRemoteTemp
	| ir |
	ir := IRBuilderTest new testRemoteTemp.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error