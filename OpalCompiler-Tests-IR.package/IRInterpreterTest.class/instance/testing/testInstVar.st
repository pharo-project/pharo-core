testInstVar
	| ir |
	ir := IRBuilderTest new testInstVar.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error