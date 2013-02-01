as yet unclassified
coerceReturnValue: gen

	"handle is in EAX. 
	first, create an instance of NBExternalHandle. Place the handle there ,
	then create an instance of receiver and place handle oop in its handle ivar"

	| asm proxy result handleOop oop done |
	
	proxy := gen proxy.
	asm := gen asm.
	result := gen reserveTemp.
	handleOop := gen reserveTemp.
	oop := gen reserveTemp.
	done := asm uniqueLabelName: 'done'.
	
	asm mov: asm EAX to: result.

	gen optReturnNullAsNil ifTrue: [ | notnil |
		notnil := asm uniqueLabelName: 'notNil'.
		
		asm 
			or: asm EAX with: asm EAX;
			jne: notnil.
		proxy nilObject.
		asm jmp: done.
		asm label: notnil.
	].	
	gen emitFetchClass: NBExternalHandle.
	
	proxy instantiateClass: asm EAX indexableSize: 4.
	asm mov: asm EAX to: handleOop.

	proxy firstIndexableField: asm EAX.
	asm mov: result to: asm ECX;
		mov: asm ECX to: asm EAX ptr.
	
	proxy pushRemappableOop: handleOop.
	
	gen emitFetchClass: objectClass.
	
	proxy instantiateClass: asm EAX indexableSize: 0.
	"EAX <- our instance "
	asm mov: asm EAX to: oop.
	proxy popRemappableOop.
	asm mov: asm EAX to: handleOop.
	
	proxy storePointer: self handleIvarIndex ofObject: oop  withValue: handleOop.
	
	asm mov: oop to: asm EAX.  "return the oop"

	gen releaseTemps: 3.
	asm label: done.
	