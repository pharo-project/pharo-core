initialize
	super initialize.
	self enableDragNDrop: true.
	self fillStyle: (Smalltalk ui theme morphTreeColumnFillStyleFor: self).
	self borderStyle: (Smalltalk ui theme morphTreeColumnBorderStyleFor: self)
