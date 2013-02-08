basic-interpreter-proxy-interaction
primitiveFailWithMessage
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			"Fail the native code"
			gen failWithMessage: 'here is a message you wanna show to users when you fail a primitive'
		].