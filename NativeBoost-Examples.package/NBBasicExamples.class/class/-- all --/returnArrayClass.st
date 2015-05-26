returnArrayClass
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			"Access an internal data structure via the interpreter proxy"
			proxy classArray.
		]