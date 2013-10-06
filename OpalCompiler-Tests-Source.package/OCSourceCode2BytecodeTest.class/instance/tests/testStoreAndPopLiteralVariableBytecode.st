testStoreAndPopLiteralVariableBytecode
	| selector method scanner did |
	selector := (method := self compile2method: 'storeAndPopLiteralVariableBytecode ClassVar := nil') selector.
	scanner := InstructionStream on: method.
	self
		assert: ((did := scanner nextInstruction; peekInstruction) selector == #popIntoLiteralVariable:
				and: [did arguments first = (#ClassVar -> nil)])
		description: 'Failed ' , selector