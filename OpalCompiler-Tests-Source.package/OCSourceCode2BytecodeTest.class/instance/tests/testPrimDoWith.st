testPrimDoWith
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'bytecodeDoWith self do: #something') selector.
	scanner := InstructionStream on: methodNode method.
	2
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #send:super:numArgs:
				and: [did arguments = {#do:. false. 1}])
		description: 'Failed ' , selector