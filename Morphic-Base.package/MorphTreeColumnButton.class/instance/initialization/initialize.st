initialize
	super initialize.
	self enableDragNDrop: true.
	self fillStyle: (Smalltalk ui theme buttonColorFor: self).
	self borderColor: Smalltalk ui theme borderColor
