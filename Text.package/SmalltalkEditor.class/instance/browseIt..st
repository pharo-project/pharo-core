editing keys
browseIt: aKeyboardEvent
	"Triggered by Cmd-B; browse the thing represented by the current selection, if plausible."

	self browseIt.
	^ true