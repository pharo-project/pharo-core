testRemoteTempNested
	| ir |
	ir := IRBuilderTest new testRemoteTempNested.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error