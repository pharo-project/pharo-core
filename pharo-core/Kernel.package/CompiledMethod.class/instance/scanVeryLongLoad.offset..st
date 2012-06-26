scanning
scanVeryLongLoad: extension offset: offset
	"Answer whether the receiver contains a long load whose extension is the 
	argument."
	| scanner |
	scanner := InstructionStream on: self.
	^ scanner scanFor: [:instr | (instr = 132 and: [scanner followingByte = extension])
											and: [scanner thirdByte = offset]]