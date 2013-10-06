testPrimNextPut
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'bytecodePrimNextPut self nextPut: 3') selector.
	scanner := InstructionStream on: methodNode method.
	2
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #send:super:numArgs:
				and: [did arguments = {#nextPut:. false. 1}])
		description: 'Failed ' , selector