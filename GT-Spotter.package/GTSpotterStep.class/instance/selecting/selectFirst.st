selectFirst
	
	self candidates isEmpty ifTrue: [ ^ self ].
	
	selected := self candidates head.
	self notifySelectedCandidateChanged.