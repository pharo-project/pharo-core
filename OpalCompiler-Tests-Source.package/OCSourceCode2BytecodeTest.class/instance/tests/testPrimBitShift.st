testPrimBitShift
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'bytecodePrimBitShift 3 bitShift: 4') selector.
	scanner := InstructionStream on: methodNode method.
	2
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #send:super:numArgs:
				and: [did arguments = {#bitShift:. false. 1}])
		description: 'Failed ' , selector