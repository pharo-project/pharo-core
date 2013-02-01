*NativeBoost-Core
nbFloat32AtOffset: zeroBasedOffset
	"Read 32-bit float at ZERO-based index.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(float32 (self, ulong zeroBasedOffset)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "offset"
			add: asm EAX with: asm ECX;
			fld: asm EAX ptr32. "load a floating point value from memory, at base address, held in EAX register into fp(0) register,
				we are using #ptr32, to indicate that memory operand size is 32bits long"
	] 