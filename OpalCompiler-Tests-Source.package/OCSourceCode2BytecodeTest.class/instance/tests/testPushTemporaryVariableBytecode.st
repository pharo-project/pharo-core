testPushTemporaryVariableBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushTemporaryVariableBytecode: t0 t0 yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushTemporaryVariable:
				and: [did arguments first == 0])
		description: 'Failed ' , selector