debugIt: aKeyboardEvent
	"Evaluate the current selection in the Debugger."

	self currentUser canDebug ifFalse: [ ^ false ].
	self debugIt.
	^ true