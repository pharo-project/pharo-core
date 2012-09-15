editing keys
inspectIt: aKeyboardEvent
	"Inspect the selection -- invoked via cmd-i.  If there is no current selection, use the current line."

	self inspectIt.
	^ true