setUpDataBytesAlign: alignToBytes

	asm nop.
	asm align: alignToBytes.
	^ asm db: 16r12.