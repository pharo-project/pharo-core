emitting code
coerceOopToOperand: gen ifFailedJumpTo: aLabel
	" input: 
		EAX - oop
	  output:
	      EAX - result of coercion
	"
	
	self assert: (pointerArity = 0).
	gen proxy positive32BitValueOf: gen asm EAX