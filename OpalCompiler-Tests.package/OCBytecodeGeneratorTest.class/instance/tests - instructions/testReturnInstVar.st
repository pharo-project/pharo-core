testReturnInstVar
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		returnInstVar: 1;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = 'Quick return field 0 (0-based)'
	