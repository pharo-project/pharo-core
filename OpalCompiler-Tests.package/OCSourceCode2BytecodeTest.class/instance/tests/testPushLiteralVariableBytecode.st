testPushLiteralVariableBytecode
	| selector method scanner did |
	selector := (method := self compile2method: 'pushLiteralVariableBytecode ClassVar yourself') selector.
	scanner := InstructionStream on: method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushLiteralVariable:
				and: [did arguments first = (#ClassVar -> nil)])
		description: 'Failed ' , selector