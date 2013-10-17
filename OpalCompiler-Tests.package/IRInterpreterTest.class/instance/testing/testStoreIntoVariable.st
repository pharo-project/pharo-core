testStoreIntoVariable
	| ir |
	ir := IRBuilderTest new testStoreIntoVariable.
	IRInterpreter new interpret: ir