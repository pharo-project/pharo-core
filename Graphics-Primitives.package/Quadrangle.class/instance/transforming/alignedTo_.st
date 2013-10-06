alignedTo: alignPointSelector
	"Return a copy with offset according to alignPointSelector which is one of...
	#(topLeft, topCenter, topRight, leftCenter, center, etc)"

	^ self class
		region: (super translateBy: (0@0) - (self perform: alignPointSelector))
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor