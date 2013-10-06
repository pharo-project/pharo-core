performingCall: ci in: aBlock

	ci 
		asm: self;
		alignmentInsertionPoint: last.
	aBlock value: ci.
	self callCleanup: ci.