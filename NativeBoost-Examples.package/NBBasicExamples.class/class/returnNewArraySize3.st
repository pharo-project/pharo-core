basic-interpreter-proxy-interaction
returnNewArraySize3
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void ))  
		emit: [:gen :proxy :asm |
			"Array -> EAX"
			proxy classArray.
			"Array new: 3 (Array oop is stored in EAX)"
			proxy instantiateClass: asm EAX indexableSize: 3
		]