testing
test
	"((DisplayHostWindow extent: 400@400 depth: 16 ) translateBy: 210@450) test"
	"Should
		a) open a window with the upper left portion of the current Display
		b) find the window size
		f) close the window"
	| size |
	self open.
	Display displayOn: self.
	self forceToScreen: self boundingBox.
	size := self windowSize.
	self close.
	^ size