as yet unclassified
returnStruct9Bytes
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestStructure9bytes () ) 
		emit: [:gen :proxy :asm |
		
			asm 
				mov: asm ESP ptr to: asm EAX;
		"fill struct with 1, 2, 3 values"
				mov: 1 to: asm EAX ptr;
				mov: 2 to: asm EAX ptr+4;
				mov: 3 to: asm EAX ptr+8
		]
	