testStoreTemp
	| ir |
	ir := IRBuilderTest new testStoreTemp.
	IRInterpreter new interpret: ir