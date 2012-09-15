editing keys
save: aKeyboardEvent
	"Submit the current text.  Equivalent to 'accept'"

	self closeTypeIn.
	self accept.
	^ true