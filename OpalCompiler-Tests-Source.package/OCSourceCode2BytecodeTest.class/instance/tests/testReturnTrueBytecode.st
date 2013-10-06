testReturnTrueBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'returnTrueBytecode 3 + 4. ^ true') selector.
	scanner := InstructionStream on: methodNode method.
	4
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #methodReturnConstant:
				and: [did arguments first])
		description: 'Failed ' , selector