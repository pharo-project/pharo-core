testStoreIntoLiteralVariableBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'storeIntoLiteralVariableBytecode ^ (ClassVar := nil)') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner nextInstruction; peekInstruction) selector == #storeIntoLiteralVariable:
				and: [did arguments first = (#ClassVar -> nil)])
		description: 'Failed ' , selector