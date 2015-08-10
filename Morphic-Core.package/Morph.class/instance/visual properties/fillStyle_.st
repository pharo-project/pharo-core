fillStyle: aFillStyle
	"Set the current fillStyle of the receiver.
	Optimized for no change."
	
	self assureExtension.
	extension fillStyle = aFillStyle
		ifTrue: [^self]. "no change optimization"
	extension fillStyle: aFillStyle.
	self privateColor: aFillStyle asColor.
	self changed