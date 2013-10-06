interpretSequence: instructionSequence
	self label: instructionSequence orderNumber.
	instructionSequence do: [:instr | self interpretInstruction: instr].
