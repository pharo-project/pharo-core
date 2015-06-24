resizeContainer
	| width height doubleBorder |

	doubleBorder := self borderWidth * 2.
	width := self bounds width - self verticalScrollBarWidth - doubleBorder.
	height := self bounds height - doubleBorder.
	self container bounds: (self bounds topLeft extent: width@height)