returnAsBit: aBoolean
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( int ( oop aBoolean ) )  
		emit: [:gen :proxy :asm |
			" aBoolean -> EAX "
			asm pop: asm EAX.
			"^ EAX = true ifTrue: [ 1 ] ifFalse: [ 0 ] "
			proxy booleanValueOf: asm EAX.
		]