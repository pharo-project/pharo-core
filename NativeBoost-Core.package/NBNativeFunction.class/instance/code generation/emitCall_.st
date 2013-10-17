emitCall: asm
	" emit the asm code for calling myself "
	asm mov: (handle asUImm32 annotation: self annotation) to: asm EAX.
	asm call: asm EAX.