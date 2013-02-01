emitting tests
isBytes2: oop ifNotJumpTo: label

	asm 
		mov: oop to: EAX;
		test: AL with: 1;
		jne: label;
		"mov: EAX ptr to: ECX;"
		"and: ECX with: self objectFormatMask;"
		test: EAX with: (self indexableBytesFormat bitShift: self objectFormatShift);
		jz: label