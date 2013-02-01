emitting the code
emitLoad: gen to: operand
	"emit instructions to load a function argument into given operand"
	
	gen proxy stackValue: stackIndex.
	
	operand = gen asm EAX ifFalse: [ gen asm mov: gen asm EAX to: operand ]
