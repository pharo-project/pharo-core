coerceReturnValue: gen
	| asm |
	
	"convert signed short to ST integer"
	asm := gen asm.
	
	asm movzx: asm EAX with: asm AX.

	gen proxy integerObjectOf: asm EAX.
 
	