code generation
emitRexForOp1: op1 op2: op2 
	"In 64-bit mode, the instruction’s default operation size is 32 bits. 
	Use of the REX.W prefix promotes operation to 64 bits. 
	Use of the REX.R prefix permits access to additional registers (R8-R15) for the op2 register. 
	Use of the REX.B prefix permits access to additional registers (R8-R15) for the op1 register. 
	See the summary chart at the beginning of this section for encoding data and limits."
	| requires64Bit |
	
	"no-op in 32 bit mode"
	self is32BitMode ifTrue: [ ^ self ].
	
	op1 isInteger ifTrue: [ ^ self emitRexForInteger: op1 op2: op2 ].
	
	requires64Bit := op1 is64 or: [ op2 isReg and: [ op2 is64 ] ].

	self emitRexPrefixW: requires64Bit R: op1 isUpperBank X: false B: op2 isUpperBank.