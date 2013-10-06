returnInteger: a minus: b
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( int ( int a,  int b) )  
		emit: [:gen :proxy :asm |
			" a "
			asm pop: asm EAX.
			" b "
			asm pop: asm EDX.
			"result := a - b"
			asm sub: asm EAX with: asm EDX
		]