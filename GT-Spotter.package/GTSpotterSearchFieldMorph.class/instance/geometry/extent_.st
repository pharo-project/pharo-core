extent: aPoint
	super extent: aPoint.
	
	self owner ifNotNil: [
		"to center text area"
		self layoutProperties marginTop: (self owner height - self textArea height) / 2 ]