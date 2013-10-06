testPushReceiverVariableBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushReceiverVariableBytecode instVar yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushReceiverVariable:
				and: [did arguments first == 2])
		description: 'Failed ' , selector