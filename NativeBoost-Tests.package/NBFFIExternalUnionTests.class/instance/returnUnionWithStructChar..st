as yet unclassified
returnUnionWithStructChar: aChar
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithStructure (char  aChar) ) 
		emit: [:gen :proxy :asm |
		
			asm
				pop: asm EAX;
				pop: asm EDX;
		"fill union with int"
				mov: asm DL to: asm EAX ptr8;
				push: asm EAX
		 ]
	