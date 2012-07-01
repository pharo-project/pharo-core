scanning
scanLongLoad: extension 
	"Answer whether the receiver contains a long load whose extension is the 
	argument."

	| scanner |
	scanner := InstructionStream on: self.
	^scanner scanFor: [:instr | instr = 128 and: [scanner followingByte = extension]]