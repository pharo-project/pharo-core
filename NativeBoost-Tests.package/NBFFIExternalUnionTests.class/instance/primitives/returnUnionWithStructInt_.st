returnUnionWithStructInt: anInt
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithStructure (int  anInt) ) 
		emit: [:gen :proxy :asm |
		
			asm
				pop: asm EAX;
				pop: asm EDX;
		"fill union with int"
				mov: asm EDX to: asm EAX ptr;
				push: asm EAX
		 ]
	