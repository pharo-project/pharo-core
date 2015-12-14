ourWindow
	"Guess the window to draw on."
	| window ptr child |
	window := self getInputFocus.
	ptr := self queryPointer: window.	 "{root. child. root pos. win pos. mask}"
	child := ptr second.
	child xid = 0 ifTrue: [^ window].
	^ child