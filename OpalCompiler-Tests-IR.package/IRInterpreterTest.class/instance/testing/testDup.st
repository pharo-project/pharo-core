testDup
	| ir |
	ir := IRBuilderTest new testDup.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error