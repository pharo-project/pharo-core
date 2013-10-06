returnSpecialObjectsArray
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			"store the special objects array into EAX"
			proxy specialObjectsArray.
		]