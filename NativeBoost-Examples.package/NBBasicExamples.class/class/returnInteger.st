basc-types
returnInteger
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( int ( void) )  
		emit: [:gen :proxy :asm |
			asm mov: 123456789 to: asm EAX
		]