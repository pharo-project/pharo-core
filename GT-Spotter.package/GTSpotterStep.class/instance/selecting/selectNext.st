selectNext
	
	self selected ifNil: [ ^ self ].
	self selected: self selected nextLink
	
	