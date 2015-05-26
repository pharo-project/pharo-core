usesSpecialSlot
	"retirn true if we define something else than InstanceVariableSlots"
	^self slots anySatisfy: [ :each | each isSpecial ]