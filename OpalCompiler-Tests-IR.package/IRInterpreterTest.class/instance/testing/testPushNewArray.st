testPushNewArray
	| ir |
	ir := IRBuilderTest new testPushNewArray.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error