pushFloat: aFloat

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #( double (float aFloat))
		emit: [:gen |
			| asm |
			asm := gen asm.
			asm fld: asm ESP ptr32		
		]