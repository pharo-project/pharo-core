from: anObject slot: aSlotSymbol
	"anObject must be an instance of class having GLMPhlowTrait for example GLMBrick"
	"aSlotSymbol must be a name of existing GLMPhlowSlot in anObject"
	self transmissions do: [ :each |
		|from|
		from := anObject phlowValue: each phlow.
		each addOrigin: (GLMPhlowOrigin target: from slot: aSlotSymbol) ].