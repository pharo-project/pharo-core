pushAsPointer: gen 
	"push a pointer to handle value"
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
	
	"we can skip class verification, if loader loads receiver, since nothing to fear there"
	loader isReceiver ifFalse: [
		self verifyClassOf: oop is: objectClass generator: gen ].
	
	proxy fetchPointer: (self handleIvarIndex) ofObject: oop. "handle ivar"
	proxy varBytesFirstFieldOf: asm EAX. "handle value ptr"
	
	asm 
		push: asm EAX;
		label: done.
	
	gen releaseTemps: 1
