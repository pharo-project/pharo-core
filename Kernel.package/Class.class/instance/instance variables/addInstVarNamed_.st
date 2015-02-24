addInstVarNamed: aString
	"Add the argument, aString, as one of the receiver's instance variables."
	^self addSlot: (InstanceVariableSlot named: aString asSymbol)