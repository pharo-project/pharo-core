pushAsValue: gen

	"push value"
	|asm proxy oop|
	proxy := gen proxy.
	asm := gen asm.
	oop := gen reserveTemp.
	loader emitLoad: gen to: oop.
	
	"Special case: do not emit type checking if argument is receiver"
	(loader isReceiver and: [  gen requestor  includesBehavior: objectClass ])
	ifFalse: [
		self verifyClassOf: oop is: objectClass generator: gen.
	].

	proxy fetchPointer: (self valueIvarIndex) ofObject: oop. "value ivar"
	proxy integerValueOf: asm EAX. "handle value"
	asm push: asm EAX.
	
	gen releaseTemps: 1.
