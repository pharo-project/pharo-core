at: key put: anObject

	value at: key put: anObject.
	self valueChanged: value.
	^ anObject