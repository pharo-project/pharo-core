editing keys
outdent: aKeyboardEvent
	"Remove a tab from the front of every line occupied by the selection.
	Invoked from keyboard via cmd-shift-L.  2/29/96 sw"

	^ self inOutdent: aKeyboardEvent delta: -1