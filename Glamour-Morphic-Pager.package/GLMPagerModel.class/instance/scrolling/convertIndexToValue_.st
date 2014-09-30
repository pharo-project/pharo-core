convertIndexToValue: anIndex
	
	self size = self actualNumberOfVisiblePages
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ (anIndex - 1) / (self size - self actualNumberOfVisiblePages ) ]