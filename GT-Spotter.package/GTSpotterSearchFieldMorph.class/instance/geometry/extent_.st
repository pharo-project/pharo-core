extent: aPoint
	super extent: aPoint.
	
	self owner ifNotNil: [
		"to center text area"
		self owner layoutProperties marginTop: (self brickThemer spotterThemer headerHeight - self textArea height) / 2 ]