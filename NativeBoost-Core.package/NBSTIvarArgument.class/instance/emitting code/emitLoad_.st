emitLoad: gen
	"emit instructions to load a function argument into default register
	(EAX for integral types, FP(0) for floating point)"

	| index |
	index := receiverClass allInstVarNames indexOf: ivarName.
	
	gen receiverArgumentLoader emitLoad: gen to: gen asm EAX.
	
	"receiver in EAX"
	gen proxy fetchPointer: index-1 ofObject: gen asm EAX.
	
	^ gen asm EAX