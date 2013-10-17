testPushDup
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushDup;
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = '13 <88> dup
14 <7C> returnTop
'
	