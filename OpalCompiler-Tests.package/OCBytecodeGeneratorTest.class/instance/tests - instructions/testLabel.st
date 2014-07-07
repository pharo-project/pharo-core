testLabel
	| cm symbolic |
	
	cm := IRSqueakV3PlusClosuresBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		label: #back;
		pushLiteral: 1;
		returnTop;
		goto: #back;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =    '13 <76> pushConstant: 1
14 <76> pushConstant: 1
15 <7C> returnTop
16 <A3 FC> jumpTo: 14
'