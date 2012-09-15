editing keys
doIt: aKeyboardEvent
	"Called when user hits cmd-d.  Select the current line, if relevant, then evaluate and execute. "

	self doIt.
	^ true