usesSpecialVariables
	"retirn true if we define something else than InstanceVariableSlots"
	^self usesSpecialSlot or: [self classVariables anySatisfy: [ :each | each isSpecial ] ]