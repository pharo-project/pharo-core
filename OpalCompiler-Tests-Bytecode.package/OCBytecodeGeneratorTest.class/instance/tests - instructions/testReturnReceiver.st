testReturnReceiver
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		returnReceiver;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = 'Quick return self'
	