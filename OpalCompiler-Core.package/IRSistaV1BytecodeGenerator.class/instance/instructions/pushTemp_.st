pushTemp: index

	| interval |

	stack push.

	interval := Bytecodes at: #pushTemporaryVariable.
	index <= interval size ifTrue: [
		^ self nextPut: (interval at: index).
	].
	index <= 64 ifFalse: [self tooManyVars: 'temp vars (>64)'].
	self nextPut: (Bytecodes at: #extendedPushTemporaryVariable).
	self nextPut: index - 1.
