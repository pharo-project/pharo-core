as yet unclassified
pushAsValue: gen
	"push the callback trunk address"
	| asm proxy oop |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp.

	loader emitLoad: gen to: oop.
	self verifyClassOf: oop is: callbackClass generator: gen.
	
	asm mov: oop to: asm EAX.
	asm mov: asm EAX ptr + (proxy ivar: #trunk in: callbackClass) to: asm EAX. 
	proxy fetchPointer: 0 ofObject: asm EAX. "callback address"
	asm push: asm EAX.
