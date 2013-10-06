testAddSlotAndMigrate
	"We create a class without slots and create an instance; then we add a slot and check the instance can hold a value."
	aClass := self makeWithLayout: PointerLayout.
	
	instance := aClass new.
	
	"now we extend it with slots.  The class definition should've changed"
	self makeWithLayout: PointerLayout andSlots: { #aSlot }.
	
	"it should have an instance variable"
	instance instVarAt: 1 put: 125.
	aClass layout checkIntegrity.