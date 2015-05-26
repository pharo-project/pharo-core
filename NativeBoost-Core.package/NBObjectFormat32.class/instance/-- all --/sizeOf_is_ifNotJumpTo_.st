sizeOf: headerRegister is: anImmediate ifNotJumpTo: aLabel
	asm 	and: headerRegister with: self objectSizeMask;
		xor: headerRegister with: (anImmediate bitShift: self sizeShift);
		jnz: aLabel