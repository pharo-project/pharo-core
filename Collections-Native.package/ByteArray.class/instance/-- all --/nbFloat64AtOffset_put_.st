nbFloat64AtOffset: zeroBasedOffset put: value
	"Store 64-bit float at ZERO-based index.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCallout function: #(void (self, ulong zeroBasedOffset, float64 value)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "offset"
			add: asm EAX with: asm ECX;
			
			mov: asm ESP ptr to: asm ECX;
			mov: asm ECX to: asm EAX ptr;

			mov: asm ESP ptr +4 to: asm ECX;
			mov: asm ECX to: asm EAX ptr +4 
	] 