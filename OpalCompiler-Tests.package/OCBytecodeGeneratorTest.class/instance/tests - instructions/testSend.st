testSend
	| cm symbolic |
	
	cm := IRSqueakV3PlusClosuresBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		send: #a;
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = '17 <76> pushConstant: 1
18 <D0> send: a
19 <7C> returnTop
'	