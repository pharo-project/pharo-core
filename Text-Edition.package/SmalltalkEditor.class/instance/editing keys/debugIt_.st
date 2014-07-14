debugIt: aKeyboardEvent
	"Evaluate the current selection in the Debugger."

	UserManager default canDebug ifFalse: [ ^ false ].
	self debugIt.
	^ true