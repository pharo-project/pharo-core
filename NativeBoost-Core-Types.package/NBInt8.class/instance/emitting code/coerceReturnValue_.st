coerceReturnValue: gen
	| asm |
	
	"convert signed byte to ST integer"
	asm := gen asm.
	
	asm movsx: asm EAX with: asm AL.

	gen proxy integerObjectOf: asm EAX.
 
	