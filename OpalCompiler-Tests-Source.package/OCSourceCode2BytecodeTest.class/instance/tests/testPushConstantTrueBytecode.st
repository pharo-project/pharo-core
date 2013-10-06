testPushConstantTrueBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushConstantTrueBytecode true yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self assert: ((did := scanner peekInstruction) selector == #pushConstant:
					and: [did arguments first])
		description: 'Failed ' , selector