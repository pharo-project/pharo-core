as yet unclassified
getFloatPtrOffset: aFloat
	"return the difference between float oop and pointer to its stored floating-point value ,
	must be base header size"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #( ulong (oop aFloat, NBFloatPtr aFloat))
		emit: [:gen | | asm |
			asm := gen asm.
			asm pop: asm ECX. "oop"
			asm pop: asm EAX. "float ptr"
			asm sub: asm EAX with: asm ECX
		]