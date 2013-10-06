emitUnconditionalJumpTo: addr
	^ {
	16rE9.
	(addr bitAnd: 255).
	(addr >> 8 bitAnd: 255).
	(addr >> 16 bitAnd: 255).
	(addr >> 24 bitAnd: 255)} asByteArray