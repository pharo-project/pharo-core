emitting code
coerceReturnValue: gen

	"value is in EAX, get a ST Integer and place it in the value ivar"

	| asm proxy  valueOop oop done |
	
	proxy := gen proxy.
	asm := gen asm.
	valueOop := gen reserveTemp.
	oop := gen reserveTemp.

	self representationType coerceReturnValue: gen.
	asm mov: asm EAX to: valueOop.
	proxy pushRemappableOop: valueOop.
	
	gen emitFetchClass: objectClass.
	
	proxy instantiateClass: asm EAX indexableSize: 0.
	"EAX <- our instance "
	asm mov: asm EAX to: oop.
	proxy popRemappableOop.
	asm mov: asm EAX to: valueOop.
	
	proxy storePointer: self valueIvarIndex ofObject: oop  withValue: valueOop.
	asm mov: oop to: asm EAX.  "return the oop"

	gen releaseTemps: 2.