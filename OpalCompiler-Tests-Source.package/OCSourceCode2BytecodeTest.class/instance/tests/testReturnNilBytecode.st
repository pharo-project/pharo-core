testReturnNilBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'returnNilBytecode 3 + 4. ^ nil') selector.
	scanner := InstructionStream on: methodNode method.
	4
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #methodReturnConstant:
				and: [did arguments first isNil])
		description: 'Failed ' , selector