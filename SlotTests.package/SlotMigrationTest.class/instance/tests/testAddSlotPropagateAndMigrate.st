testAddSlotPropagateAndMigrate
	"We create a class without slots and a subclass, and create an instance of the latter; then we add a slot to superclass and check the instance can hold a value."

	| superclass subclass |
	superclass := self makeWithLayout: PointerLayout.
	subclass := self make: [ :builder |
		builder 
			superclass: superclass;
			name: self anotherClassName.
		 ].
	
	superclass layout checkIntegrity.
	subclass layout checkIntegrity.
	
	instance := subclass new.
	
	"now we extend it with slots.  The class definition should've changed"
	superclass := self makeWithLayout: PointerLayout andSlots: { #aSlot }.
	
	"it should have an instance variable"
	instance instVarNamed: 'aSlot' put: 42.
	self assert: (instance instVarNamed: 'aSlot') equals: 42.
	superclass layout checkIntegrity.
	subclass layout checkIntegrity.