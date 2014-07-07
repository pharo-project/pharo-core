pushInstVar: instVarIndex

	| interval |
	stack push.
	interval := Bytecodes at: #pushReceiverVariableBytecode.
	(instVarIndex <= interval size and: [forceLongForm not])  ifTrue: [
		^ self nextPut: (interval at: instVarIndex).
	].
	(instVarIndex <= 64 and: [forceLongForm not]) ifTrue: [
		self nextPut: (Bytecodes at: #extendedPushBytecode).
		^ self nextPut: (0 "instVar" << 6) + instVarIndex - 1.
	].
	instVarIndex <= 256 ifFalse: [self tooManyVars: 'inst vars'].
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 2 "pushInstVar" << 5.
	self nextPut: instVarIndex - 1.
