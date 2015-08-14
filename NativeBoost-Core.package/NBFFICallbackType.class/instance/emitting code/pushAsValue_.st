pushAsValue: gen
	"push the callback trunk address"
	| asm proxy oop done |
	
	proxy := gen proxy.
	asm := gen asm.
	done := asm uniqueLabelName: 'done'.
	oop := gen reserveTemp.

	loader emitLoad: gen to: oop.
	self
		coerceNilToNull: gen
		oop: oop
		doneLabel: done.
	
	self verifyClassOf: oop is: callbackClass generator: gen.
	
	asm mov: oop to: asm EAX.
	asm mov: asm EAX ptr + (proxy ivar: #trunk in: callbackClass) to: asm EAX. 
	proxy fetchPointer: 0 ofObject: asm EAX. "callback address"
	asm
		push: asm EAX;
		label: done
