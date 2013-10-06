testStoreIntoLiteralVariableBytecode
	| selector method scanner did |
	selector := (method := self compile2method: 'storeIntoLiteralVariableBytecode ^ (ClassVar := nil)') selector.
	scanner := InstructionStream on: method.
	self
		assert: ((did := scanner nextInstruction; peekInstruction) selector == #storeIntoLiteralVariable:
				and: [did arguments first = (#ClassVar -> nil)])
		description: 'Failed ' , selector