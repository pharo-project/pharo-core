headerOf: anObject

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ self nbCallout function: #( ulong (oop anObject) ) emit: [:gen |
		gen asm pop: gen asm EAX.
		gen asm mov: gen asm EAX ptr to: gen asm EAX
		]