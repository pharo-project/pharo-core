emitting code
pushAsValue: gen
	"push handle value"
	| asm proxy oop |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp.
	loader emitLoad: gen to: oop.
	
	"Special case: do not emit type checking if argument is receiver"
	(loader isReceiver and: [  gen requestor  includesBehavior: objectClass ])
	ifFalse: [
		self verifyClassOf: oop is: objectClass generator: gen.
	].

	proxy fetchPointer: (self handleIvarIndex) ofObject: oop. "handle ivar"
	proxy firstIndexableField: asm EAX. "handle value ptr"
	asm mov: asm EAX ptr to: asm EAX. "handle value"
	asm push: asm EAX.
	
	gen releaseTemps: 1.

	