selectPrevious

	self selected ifNil: [ ^ self ].
	self selected: self selected previousLink