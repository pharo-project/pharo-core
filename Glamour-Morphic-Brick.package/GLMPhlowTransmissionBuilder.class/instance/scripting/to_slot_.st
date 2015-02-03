to: anObject slot: aSlotSymbol
	"anObject must be an instance of class having GLMPhlowTrait for example GLMBrick"
	"aSlotSymbol must be a name of existing Slot in anObject"
	self transmissions do: [ :each | each destination: (GLMPhlowDestination 
		target: anObject 
		port: (anObject class slotsDictionary at: aSlotSymbol)) ]