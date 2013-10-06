testStoreAndPopTemporaryVariableBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'storeAndPopTemporaryVariableBytecode | t0 t1 | t1 := t0') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner nextInstruction; peekInstruction) selector == #popIntoTemporaryVariable:
				and: [did arguments first == 1])
		description: 'Failed ' , selector