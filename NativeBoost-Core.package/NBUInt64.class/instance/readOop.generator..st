emitting code
readOop: memoryOperand generator: gen
	"emit code to read a value from given memory operand
	and convert it to a corresponding ST object" 
	| asm |
	
	pointerArity > 0 ifTrue: [
		asm mov: memoryOperand to: asm EAX.
		^ self coerceReturn: gen
		].
	
	asm := gen asm.
	
	asm 
		lea: asm EAX with: memoryOperand;
		mov: asm EAX ptr + 4 to: asm EDX;
		mov: asm EAX ptr to: asm EAX.  
	
	self coerceReturn: gen
	