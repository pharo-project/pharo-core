emitting code
pushAsPointer: gen
	"push a pointer to structure (which should be a subinstance of NBExternalStructure)"
	| asm proxy oop |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp annotation: 'oop'.

	loader emitLoad: gen to: oop.
	self verifyClassOf: oop is: objectClass generator: gen.
	
	"do a shortcut, since we know that variable bytes first byte offset"
	asm mov: oop to: asm EAX;
		add: asm EAX with: 
			(proxy objectFormat varBytesFirstField asUImm32 
				annotation: 'variable-byte first field offset').
	asm push: asm EAX.

	gen releaseTemps: 1.
	