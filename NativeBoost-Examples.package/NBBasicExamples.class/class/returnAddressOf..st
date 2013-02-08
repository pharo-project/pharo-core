basc-types
returnAddressOf: anObject
	"Yes, here we demonstrating that we can obtain a pointer (address) of object in memory.
	But in fact it has no any practical use, because at any moment once you return from the method,
	a GC may be triggered and given object can be relocated into different memory region,
	rendering an obtained address invalid"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( int ( oop anObject ) )  
		emit: [:gen :proxy :asm |
			asm pop: asm EAX.
		]