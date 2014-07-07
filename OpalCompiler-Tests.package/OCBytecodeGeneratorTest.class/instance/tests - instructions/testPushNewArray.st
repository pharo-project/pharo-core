testPushNewArray
	| cm symbolic |
	
	cm := IRSqueakV3PlusClosuresBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushNewArray: 1;
		returnTop;
		compiledMethod.

	self assert: (cm isKindOf: CompiledMethod).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = '13 <8A 01> push: (Array new: 1)
15 <7C> returnTop
'
	