emitting code
coerceReturnValue: gen
	| asm |
	
	"convert unsigned byte to ST integer"
	asm := gen asm.
	
	asm movzx: asm EAX with: asm AL.

	gen proxy integerObjectOf: asm EAX.
 
	