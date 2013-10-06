testReturnTop
	| ir |
	ir := IRBuilderTest new testReturnTop.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error