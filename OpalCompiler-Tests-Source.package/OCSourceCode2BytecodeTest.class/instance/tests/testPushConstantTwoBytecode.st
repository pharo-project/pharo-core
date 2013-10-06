testPushConstantTwoBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushConstantTwoBytecode 2 yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushConstant:
				and: [did arguments first == 2])
		description: 'Failed ' , selector