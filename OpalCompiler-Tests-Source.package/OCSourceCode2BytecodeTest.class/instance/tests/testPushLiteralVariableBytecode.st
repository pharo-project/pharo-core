testPushLiteralVariableBytecode
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'pushLiteralVariableBytecode ClassVar yourself') selector.
	scanner := InstructionStream on: methodNode method.
	self
		assert: ((did := scanner peekInstruction) selector == #pushLiteralVariable:
				and: [did arguments first = (#ClassVar -> nil)])
		description: 'Failed ' , selector