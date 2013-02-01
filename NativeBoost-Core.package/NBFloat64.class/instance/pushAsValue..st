emitting code
pushAsValue: gen
	| proxy asm oop EAX |

	proxy := gen proxy.
	asm := gen asm.
	EAX := asm EAX.
	oop := loader emitLoad: gen.
	
	asm mov: oop to: EAX.
	
	proxy oop: EAX 
		ifSmallInt: [
			asm sar: EAX with: 1;
			push: EAX;
			push: EAX; " extra push to reserve totally 8 bytes on stack"
			fild: asm ESP ptr32;
			fstp: asm ESP ptr64 ] 
		ifNotSmallInt: [
			proxy pushFloatOopAsFloat64: EAX.
		].