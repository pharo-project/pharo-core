code generation
emitRexForSingleOperand: op
	"In 64-bit mode, the instruction’s default operation size is 32 bits. 
	Use of the REX.W prefix promotes operation to 64 bits. 
	Use of the REX.B prefix permits access to additional registers (R8-R15). 
	See the summary chart at the beginning of this section for encoding data and limits."
	 
	self emitRexPrefixW: op is64 R: false X: false B: op isUpperBank .