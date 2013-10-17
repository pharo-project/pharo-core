testRemoteTemp
	| ir |
	ir := IRBuilderTest new testRemoteTemp.
	IRInterpreter new interpret: ir