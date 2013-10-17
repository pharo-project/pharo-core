emitRexForOp1: op1 op2: op2
	"op1 is the general-purpose register argument (or a register number).
	op2 is the reg/mem argument.
	
	In 64-bit mode, the instruction's default operation size is 32 bits. 
	Use of the REX.W prefix promotes operation to 64 bits. 
	Use of the REX.R prefix permits access to additional registers (R8-R15) for the op1 (reg) register. 
	Use of the REX.B prefix permits access to additional registers (R8-R15) for the op2 (r/m) register, or the base register of op2 if register indirect. 
	Use of the REX.X prefix permits access to additional registers (R8-R15) for the index register of op2, if indexed.
	See the summary chart at the beginning of this section for encoding data and limits."

	| requires64Bit |
	"no-op in 32 bit mode"
	self is32BitMode
		ifTrue: [ ^ self ].
	op1 isInteger
		ifTrue: [ ^ self emitRexForInteger: op1 op2: op2 ].
	requires64Bit := op1 is64 or: [ op2 isReg and: [ op2 is64 ] ].
	self
		emitRexPrefixW: requires64Bit
		R: op1 isUpperBank
		X: op2 hasUpperBankIndex
		B: op2 isUpperBank