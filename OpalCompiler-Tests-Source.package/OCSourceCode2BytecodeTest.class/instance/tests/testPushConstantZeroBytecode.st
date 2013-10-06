testPushConstantZeroBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushConstantZeroBytecode 0 yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushConstant:
				and: [did arguments first == 0])
		description: 'Failed ' , selector