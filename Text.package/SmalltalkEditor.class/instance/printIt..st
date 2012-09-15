editing keys
printIt: aKeyboardEvent
	"Print the results of evaluting the selection. If there is no current selection, use the current line. "

	self printIt.
	^ true