testStoreIntoLiteralVariable
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		storeIntoLiteralVariable: (LookupKey key: '1');
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '17 <76> pushConstant: 1
18 <81 C0> storeIntoLit: 1
20 <7C> returnTop
'