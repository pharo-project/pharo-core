emitting code
pushAsPointer: gen
	"push a pointer to handle value"
	| asm proxy oop |
	
	self assert: (pointerArity = 1).
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp.
	loader emitLoad: gen to: oop.
	
	self verifyClassOf: oop is: objectClass generator: gen.
	
	proxy fetchPointer: (self valueIvarIndex) ofObject: oop. "value ivar"
	proxy firstIndexableField: asm EAX. "value ptr"
	asm push: asm EAX.
	
	gen releaseTemps: 1.