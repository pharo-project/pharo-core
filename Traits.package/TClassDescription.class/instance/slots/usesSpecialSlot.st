usesSpecialSlot
	"retirn true if we define something else that InstanceVariableSlots"
	^self slots anySatisfy: [ :each | each isSpecial ]