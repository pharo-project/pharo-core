window manipulation
windowSize: aPoint
	"Set the size of the window and then return the actually set size of the window - not neccessarily the same "
		^self primitiveWindowSize: windowHandle x: aPoint x y: aPoint y