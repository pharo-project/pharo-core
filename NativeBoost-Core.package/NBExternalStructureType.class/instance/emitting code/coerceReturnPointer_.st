coerceReturnPointer: gen
	"input: pointer to struct in EAX
	output: instance of external structure oop pointing to given address"
	
	| asm proxy oop cont done |
	
	asm := gen asm.
	proxy := gen proxy.
	
	"we only care for 1 arity e.g. 'Struct *', otherwise use generic marshalling."
	pointerArity > 1 ifTrue: [  ^ super coerceReturnPointer: gen ].
	
	"handle the case where the pointer is null here"
	cont := asm uniqueLabelName: #cont.
	done := asm uniqueLabelName: #done.
	asm or: asm EAX with: asm EAX.
	asm jnz: cont.
	gen proxy nilObject.
	asm jmp: done.
	asm label: cont.
	
	"first create an instance of NBExternalAddress"
	NBExternalAddressType new 
		createInstanceWithValue: asm EAX generator: gen.
		
	proxy pushRemappableOop: asm EAX.
	
	oop := gen reserveTemp.
	proxy createInstanceOf: objectClass.
	asm mov: asm EAX to: oop.
	
	proxy popRemappableOop.
	proxy storePointer: self dataIvarIndex ofObject: oop withValue: asm EAX.

	"return an instance of objectClass as result"
	asm mov: oop to: asm EAX.
	gen releaseTemps: 1.
	asm label: done.