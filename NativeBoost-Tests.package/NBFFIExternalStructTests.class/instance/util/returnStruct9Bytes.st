returnStruct9Bytes
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestStructure9bytes () ) 
		emit: [:gen :proxy :asm |
		"the implicit pointer to return value should be pushed on stack , hence we just using ESP ptr"
			asm 
				mov: asm ESP ptr to: asm EAX;
		"fill struct with 1, 2, 3 values"
				mov: 1 to: asm EAX ptr32;
				mov: 2 to: asm EAX ptr32+4;
				mov: 3 to: asm EAX ptr8+8
		]
	