testPushConstantMinusOneBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushConstantMinusOneBytecode -1 yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushConstant:
				and: [did arguments first == -1])
		description: 'Failed ' , selector