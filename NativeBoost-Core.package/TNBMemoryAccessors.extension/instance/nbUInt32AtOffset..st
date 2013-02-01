memory access +
nbUInt32AtOffset: zeroBasedOffset
	
	"Reads unsigned 32-bit integer from memory at (receiver's address + ZERO-based offset) using native byte order.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(uint32 (self, ulong zeroBasedOffset)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "offset"
			mov: asm EAX ptr32 + asm ECX to: asm EAX
	]
