usesSpecialVariables
	"retirn true if we define something else that InstanceVariableSlots"
	^self usesSpecialSlot or: [self classVariables anySatisfy: [ :each | each isSpecial ] ]