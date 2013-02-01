proxy functions
showDisplayBits: aForm Left: l Top: t Right: r Bottom: b
	"Repaint the portion of the Smalltalk screen bounded by the affected rectangle. Used to synchronize the screen after a Bitblt to the Smalltalk Display object."
	
	"any reason to use it here?"
	self shouldBeImplemented