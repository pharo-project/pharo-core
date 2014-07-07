pushInstVar: instVarIndex

	| interval |
	stack push.
	"single push"
	interval := Bytecodes at: #pushReceiverVariableBytecode.
	(instVarIndex <= interval size and: [forceLongForm not])  ifTrue: [
		^ self nextPut: (interval at: instVarIndex).
	].
	"extended push"
	instVarIndex <=  65536 ifFalse: [self tooManyVars: 'inst vars'].
	self pushExtA: instVarIndex - 1 // 256.
	self nextPut: (Bytecodes at: #extendedPushReceiverVariable).
	self nextPut: instVarIndex - 1 \\ 256.
	