pushAsPointer: gen
	"push a pointer to structure (which should be a subinstance of NBExternalStructure)"
	| asm oop |
	

	asm := gen asm.
	oop := gen reserveTemp.

	"we handle only 1-arity pointers here (stuct*) , the others is handled as generic pointer"
	pointerArity > 1 ifTrue: [ ^ super pushAsPointer: gen].

	loader emitLoad: gen to: oop.

	"do not verify if class is known"
	loader isReceiver ifFalse: [ 
		self verifyClassOf: oop is: objectClass generator: gen.
	].

	self fetchStructAddressFrom: oop gen: gen.
	
	asm push: asm EAX.

	gen releaseTemps: 1