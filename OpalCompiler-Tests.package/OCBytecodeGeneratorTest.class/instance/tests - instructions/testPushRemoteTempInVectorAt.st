testPushRemoteTempInVectorAt
	| cm symbolic |
	
	cm := IRSqueakV3PlusClosuresBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushRemoteTemp: 1 inVectorAt: 1;
		returnTop;
		compiledMethod.

	self assert: (cm isKindOf: CompiledMethod).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '13 <8C 00 00> pushTemp: 0 inVectorAt: 0
16 <7C> returnTop
'