testSuperSendWith
	| selector methodNode scanner did |
	selector := (methodNode := self compile2methodNode: 'bytecodeSuperSendWith super new: 0') selector.
	scanner := InstructionStream on: methodNode method.
	2
		timesRepeat: [scanner nextInstruction].
	self
		assert: ((did := scanner peekInstruction) selector == #send:super:numArgs:
				and: [did arguments = {#new:. true. 1}])
		description: 'Failed ' , selector