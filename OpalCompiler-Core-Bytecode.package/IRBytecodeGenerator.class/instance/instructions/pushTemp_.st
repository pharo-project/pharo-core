pushTemp: index

	| interval |

	stack push.

	interval := Bytecodes at: #pushTemporaryVariableBytecode.
	index <= interval size ifTrue: [
		^ self nextPut: (interval at: index).
	].
	index <= 64 ifFalse: [self error: 'too many temp vars (>64)'].
	self nextPut: (Bytecodes at: #extendedPushBytecode).
	self nextPut: (1 "temp" << 6) + index - 1.
