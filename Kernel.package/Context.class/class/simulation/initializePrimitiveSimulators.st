initializePrimitiveSimulators
	"extra primitive simulators can be registered by implementing
	#registerPrimitiveSimulators method in class side of your class.
	 "
	SpecialPrimitiveSimulators := Dictionary new.

	Class allSubclassesDo: [:metaclass |
		(metaclass includesSelector: #registerPrimitiveSimulators) ifTrue: [
			metaclass theNonMetaClass registerPrimitiveSimulators.
			]
		].