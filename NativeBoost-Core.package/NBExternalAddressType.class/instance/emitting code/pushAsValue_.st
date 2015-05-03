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

	"we can skip class verification, if loader loads receiver, since nothing to fear there"
	loader isReceiver ifFalse: [
		self verifyClassOf: oop is: NBExternalAddress generator: gen ].

	proxy varBytesFirstFieldOf: oop.
	
	self valueSize = 4 ifTrue: [
		asm push: asm EAX ptr.
	] ifFalse: [ self notYetImplemented ].

	asm label: done.

	gen releaseTemps: 1