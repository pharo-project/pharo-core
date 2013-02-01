name:		an instruction mnemonic
	group:		an instruction encoding group

	o1Flags:		operand1 flags
	o2Flags:		operand2 flags
	opCode1:		opcode 1
	opCode2:		opcode 2
	opCodeR:		code for inlining in MR field as register

Operand flags:

bit:	 9   |  8   |  7    |   6  |  5    |   4    |  3  |  2   |  1  | 0 |
______________________________________________
      *86| *64 | XMM | MM | IMM | MEM | 64 | 32 | 16 | 8|
	
- *64 , set on o1Flags, meaning that instruction available only for x64 processor mode
- *86 , set on o1Flags, meaning that instruction available only for x86 processor mode

