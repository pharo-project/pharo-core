transforming
alignedTo: alignPointSelector
	"Return a copy with offset according to alignPointSelector which is one of...
	#(topLeft, topCenter, topRight, leftCenter, center, etc)
	 5/24/96 sw: removed hard-coded class name so subclasses can gain same functionality."

	^ self class
		region: (super translateBy: (0@0) - (self perform: alignPointSelector))
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor