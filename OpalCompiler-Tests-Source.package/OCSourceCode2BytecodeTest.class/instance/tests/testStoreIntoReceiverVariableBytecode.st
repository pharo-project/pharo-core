testStoreIntoReceiverVariableBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'storeIntoReceiverVariableBytecode ^ (instVar := self)') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner nextInstruction; peekInstruction) selector == #storeIntoReceiverVariable:
				and: [did arguments first == 2])
		description: 'Failed ' , selector