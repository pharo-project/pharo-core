helpers
ifFailedEmit: aBlock
	| lbl |
	lbl := asm uniqueLabelName: 'notFailed'.
	
	self failed.
	asm or: EAX with: EAX.
	asm jz: lbl.
		
	aBlock value.
	
	asm label: lbl