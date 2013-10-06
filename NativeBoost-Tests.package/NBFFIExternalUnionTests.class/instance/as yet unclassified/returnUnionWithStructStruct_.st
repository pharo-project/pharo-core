returnUnionWithStructStruct: aStructure
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithStructure (NBTestStructure9bytes  aStructure) ) 
		emit: [:gen :proxy :asm |
		
			asm
				pop: asm EAX;
				pop: asm EDX;
		"fill union with structure"
				mov: asm EDX to: asm EAX ptr;
				pop: asm EDX;
				mov: asm EDX to: asm EAX ptr + 4;
				pop: asm EDX;
				mov: asm EDX to: asm EAX ptr + 8;
				push: asm EAX.
		 ]
	