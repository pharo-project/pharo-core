selectPrevious

	self selected ifNil: [ ^ self ].
	
	selected := self selected previousLink.
	self notifySelectedCandidateChanged.