editing keys
indent: aKeyboardEvent
	"Add a tab at the front of every line occupied by the selection. Invoked from keyboard via cmd-shift-R.  2/29/96 sw"

	^ self inOutdent: aKeyboardEvent delta: 1