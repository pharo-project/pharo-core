basic-interpreter-proxy-interaction
primitiveFail
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			"Fail the native code"
			proxy primitiveFail.
		].