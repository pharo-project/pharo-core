pushAsValue: gen
	"push handle value"
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

	"Special case: do not emit type checking if argument is receiver"
	(loader isReceiver and: [  gen requestor  includesBehavior: objectClass ])
	ifFalse: [
		self verifyClassOf: oop is: objectClass generator: gen.
	].

	proxy fetchPointer: (self handleIvarIndex) ofObject: oop. "handle ivar"
	proxy varBytesFirstFieldOf: asm EAX. "handle value ptr"
	asm mov: asm EAX ptr to: asm EAX. "handle value"
	asm push: asm EAX.

	asm label: done.
	
	gen releaseTemps: 1