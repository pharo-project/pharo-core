as yet unclassified
pushAsPointer: gen

	"push a pointer to external address first indexable field (where address value held)"
	| asm proxy oop |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp.
	loader emitLoad: gen to: oop.

	"we can skip class verification, if loader loads receiver, since nothing to fear there"
	loader isReceiver ifFalse: [
		self verifyClassOf: oop is: NBExternalAddress generator: gen.
	].

	asm decorateWith: 'NBExternalAddressType>>pushAsPointer:' during: [  	
		proxy varBytesFirstFieldOf: oop.
		asm 
			push: asm EAX ].
	
	gen releaseTemps: 1.
