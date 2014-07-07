testReturnConstant
	| cm symbolic |
	
	cm := IRSqueakV3PlusClosuresBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		returnConstant: 1;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = 'Quick return 1'
	