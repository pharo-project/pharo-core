emitting code
prepareReturnValue: gen for: callinfo

	| asm proxy |
	
	asm := gen asm.
	proxy := gen proxy.
	
	(pointerArity = 0 and: [ self returnViaRegisters not ]) ifTrue: [
		"we should instantiate a new instance of struct 
		and push a pointer to its first byte on a stack (so C function will know where to store return value(s))"
		returnOop := gen reserveTemp.
		gen emitFetchClass: objectClass.
		proxy instantiateClass:  asm EAX indexableSize: objectClass instanceSize.
		asm mov: asm EAX to: returnOop.
		proxy firstIndexableField: asm EAX. "in EAX is pointer to first byte of struct"
		
		asm noticePush: asm pointerSize forCall: callinfo.
		asm push: asm EAX
	]
