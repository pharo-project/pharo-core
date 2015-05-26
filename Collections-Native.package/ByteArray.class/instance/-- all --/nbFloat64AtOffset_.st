nbFloat64AtOffset: zeroBasedOffset
	"Read 64-bit float at ZERO-based index.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCallout function: #(float64 (self, ulong zeroBasedOffset)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "index"
			add: asm EAX with: asm ECX;
			fld: asm EAX ptr64. "load a floating point value from memory, at base address, held in EAX register into fp(0) register,
				we are using #ptr64, to indicate that memory operand size is 64bits long"
	] 