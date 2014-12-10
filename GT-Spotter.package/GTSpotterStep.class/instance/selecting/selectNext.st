selectNext
	
	self selected ifNil: [ ^ self ].
	
	selected := self selected nextLink.
	self notifySelectedCandidateChanged.
	
	