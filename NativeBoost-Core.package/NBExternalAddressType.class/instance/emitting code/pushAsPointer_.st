pushAsPointer: gen

	"push a pointer to external address first indexable field (where address value held)"
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

	asm decorateWith: 'NBExternalAddressType>>pushAsPointer:' during: [  	
		proxy varBytesFirstFieldOf: oop.
		asm push: asm EAX].
	
	asm label: done.
		
	gen releaseTemps: 1