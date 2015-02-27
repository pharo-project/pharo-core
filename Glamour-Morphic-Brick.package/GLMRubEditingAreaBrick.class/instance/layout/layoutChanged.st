layoutChanged
	super layoutChanged.
	
	self morph ifNil: [ ^ self ].
	
	isLayouting ifFalse: [
		isLayouting := true.
		self height: self morph height.
		isLayouting := false ]