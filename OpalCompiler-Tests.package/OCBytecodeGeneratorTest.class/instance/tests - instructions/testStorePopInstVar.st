testStorePopInstVar
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		pushLiteral: 1;
		storePopInstVar: 1;
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '13 <76> pushConstant: 1
14 <76> pushConstant: 1
15 <60> popIntoRcvr: 0
16 <7C> returnTop
'