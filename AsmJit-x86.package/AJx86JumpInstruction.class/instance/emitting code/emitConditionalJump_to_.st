emitConditionalJump: addr to: desc
	^ {16r0F.
	(16r80 + desc opCode1).
	(addr bitAnd: 255).
	(addr >> 8 bitAnd: 255).
	(addr >> 16 bitAnd: 255).
	(addr >> 24 bitAnd: 255)} asByteArray