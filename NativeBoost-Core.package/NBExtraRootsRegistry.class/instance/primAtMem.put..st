primitives
primAtMem: addr put: anOop 

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	"write an oop to given memory address"
	
	^ self nbCallout function: #(void ( ulong addr, oop anOop )) emit: [:gen |
		| proxy asm |
		proxy := gen proxy.
		asm := gen asm.
		
		asm 
			pop: asm EAX; "address"
			pop: asm ECX; "oop"
			mov: asm ECX to: asm EAX ptr
	].
	
