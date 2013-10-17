testPushConsArray
	| ir |
	ir := IRBuilderTest new testPushConsArray.
	IRInterpreter new interpret: ir