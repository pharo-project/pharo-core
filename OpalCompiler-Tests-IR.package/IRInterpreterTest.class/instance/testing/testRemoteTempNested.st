testRemoteTempNested
	| ir |
	ir := IRBuilderTest new testRemoteTempNested.
	IRInterpreter new interpret: ir