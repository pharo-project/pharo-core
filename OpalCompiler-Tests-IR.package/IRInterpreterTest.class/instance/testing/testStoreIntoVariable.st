testStoreIntoVariable
	| ir |
	ir := IRBuilderTest new testStoreIntoVariable.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error