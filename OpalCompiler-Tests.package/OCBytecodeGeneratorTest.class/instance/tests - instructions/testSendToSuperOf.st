testSendToSuperOf
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		send: #a toSuperOf: Object;
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '17 <76> pushConstant: 1
18 <85 00> superSend: a
20 <7C> returnTop
'