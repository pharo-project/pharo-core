*Tools-Inspector
defaultLabelForInspector
	"Answer the default label to be used for an Inspector window on the receiver."

	^ super defaultLabelForInspector, ': ', self printString