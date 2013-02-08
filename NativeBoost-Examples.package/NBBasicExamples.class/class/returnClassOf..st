basic-interpreter-proxy-interaction
returnClassOf: anObject
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( oop anObject ) )  
		emit: [:gen :proxy :asm |
			" anObject -> EAX "
			asm pop: asm EAX.
			"^ anObject class "
			proxy fetchClassOf: asm EAX.
		]