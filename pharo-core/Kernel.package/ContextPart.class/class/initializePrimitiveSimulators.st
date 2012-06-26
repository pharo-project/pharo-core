simulation
initializePrimitiveSimulators
	"extra primitive simulators can be registered by implementing
	#registerPrimitiveSimulators method in class side of your class.
	 "
	SpecialPrimitiveSimulators := Dictionary new.

	Class allSubclassesDo: [:metaclass |
		(metaclass methodDict includesKey: #registerPrimitiveSimulators) ifTrue: [
			metaclass theNonMetaClass registerPrimitiveSimulators.
			]
		].