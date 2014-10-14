testStorePopIntoLiteralVariable
	| cm symbolic |
	
	cm := IRSqueakV3PlusClosuresBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		pushLiteral: 1;
		storePopIntoLiteralVariable: (#test->1);
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '17 <76> pushConstant: 1
18 <76> pushConstant: 1
19 <82 C0> popIntoLit: test
21 <7C> returnTop'