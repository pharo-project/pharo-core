testSendSuper
	| ir |
	ir := IRBuilderTest new testSendSuper.
	IRInterpreter new interpret: ir