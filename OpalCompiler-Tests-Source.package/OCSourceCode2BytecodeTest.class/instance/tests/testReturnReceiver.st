testReturnReceiver
	| selector methodNode scanner |
	selector := (methodNode := self compile2methodNode: 'returnReceiver 3 + 4. ^ self') selector.
	scanner := InstructionStream on: methodNode method.
	4
		timesRepeat: [scanner nextInstruction].
	self assert: scanner peekInstruction selector == #methodReturnReceiver
		description: 'Failed ' , selector