testPrimAtEnd
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'bytecodePrimSize self atEnd') selector.
	scanner := InstructionStream on: methodNode method.
	1
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #send:super:numArgs:
				and: [did arguments = {#atEnd. false. 0}])
		description: 'Failed ' , selector