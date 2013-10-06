debugIt: aKeyboardEvent
	"Evaluate the current selection in the Debugger."

	Smalltalk tools userManager canDebug ifFalse: [ ^ false ].
	self debugIt.
	^ true