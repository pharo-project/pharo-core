testDoDup
	| selector methodNode scanner |
	methodNode := self compile2methodNode: 'duplicateTopBytecode 3 + 4; yourself'.
	selector := methodNode selector.
	scanner := InstructionStream on: methodNode method.
	1
		timesRepeat: [scanner nextInstruction].
	self assert: scanner peekInstruction selector == #doDup description: 'Failed ' , selector