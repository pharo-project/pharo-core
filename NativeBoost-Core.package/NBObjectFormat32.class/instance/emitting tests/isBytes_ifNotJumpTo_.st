isBytes: oop ifNotJumpTo: label

	asm 
		mov: oop to: EAX;
		test: AL with: 1;
		jne: label;
		mov: EAX ptr to: ECX;
		and: ECX with: self objectFormatMask;
		cmp: ECX with: (self indexableBytesFormat bitShift: self objectFormatShift);
		jl: label