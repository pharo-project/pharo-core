scanning
peekInstruction
	"Return the next bytecode instruction as a message that an InstructionClient would understand.  The pc remains unchanged."

	| currentPc instr |
	currentPc := self pc.
	instr := self nextInstruction.
	self pc: currentPc.
	^ instr