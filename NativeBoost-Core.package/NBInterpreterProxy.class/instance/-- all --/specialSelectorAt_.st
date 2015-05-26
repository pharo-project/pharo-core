specialSelectorAt: index
	"generate the code to load the symbol at the given index from specialObjectsArray at: 23"
	"since we cannot directly access the specialObjectsArray we store it as an extra Root"
	NativeBoost extraRootsRegistry
		at: #specialSelectorsArray ifAbsentPut: [ Smalltalk specialSelectors ];
		"specialSelectorsArray -> EAX"
		emitOopAt: #specialSelectorsArray generator: gen.
	"EAX at: index"
	self stObject: asm EAX at: index.