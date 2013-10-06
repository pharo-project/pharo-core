returnOop2Of: anArg 

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ self nbCallout
		options: #( + optUseStackPointer optNoAlignment +optCheckIndirectArgBounds - optDirectProxyFnAddress );

		 function: #( oop (oop anArg@2) ) emit: [:gen |
			gen asm mov: gen asm ESP ptr to: gen asm EAX ]
	