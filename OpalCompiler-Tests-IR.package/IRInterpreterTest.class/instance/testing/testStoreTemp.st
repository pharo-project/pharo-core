testStoreTemp
	| ir |
	ir := IRBuilderTest new testStoreTemp.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error