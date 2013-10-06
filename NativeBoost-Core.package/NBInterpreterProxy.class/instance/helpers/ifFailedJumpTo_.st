ifFailedJumpTo: label
	self failed.
	asm or: EAX with: EAX.
	asm jnz: label.
		
