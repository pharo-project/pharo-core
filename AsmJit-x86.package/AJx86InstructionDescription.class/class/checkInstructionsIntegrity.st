testing
checkInstructionsIntegrity

	" self checkInstructionsIntegrity"
	| data |
	
	data := self instructionData.
	
	data do: [:dt | | instr |
		
		instr := instructions at: dt first.

		self assert: [
			(instr name = (dt at: 1)) &
			(instr group = (dt at: 2)) &
			(instr o1Flags = (dt at:3)) &
			(instr o2Flags = (dt at:4)) &
			(instr opCodeR = (dt at:5)) &
			(instr opCode1 = (dt at:6)) &
			(instr opCode2 = (dt at:7)) 
		].
	].

