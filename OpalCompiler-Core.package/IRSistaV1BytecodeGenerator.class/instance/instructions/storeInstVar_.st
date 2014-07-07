storeInstVar: instVarIndex

	instVarIndex <=  65536 ifFalse: [self tooManyVars: 'inst vars'].
	self pushExtA: instVarIndex - 1 // 256.
	self nextPut: (Bytecodes at: #extendedStoreReceiverVariable).
	self nextPut: instVarIndex - 1 \\ 256.