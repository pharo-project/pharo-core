storePopInstVar: instVarIndex

	| interval |
	stack pop.

	"single store pop"
	interval := Bytecodes at: #storePopReceiverVariable.
	(instVarIndex <= interval size and: [forceLongForm not])  ifTrue: [
		^ self nextPut: (interval at: instVarIndex)
	].

	"extended store pop"
	instVarIndex <=  65536 ifFalse: [self tooManyVars: 'inst vars'].
	self pushExtA: instVarIndex - 1 // 256.
	self nextPut: (Bytecodes at: #extendedStorePopReceiverVariable).
	self nextPut: instVarIndex - 1 \\ 256.
	