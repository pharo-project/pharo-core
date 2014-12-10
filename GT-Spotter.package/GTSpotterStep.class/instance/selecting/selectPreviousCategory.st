selectPreviousCategory
	|currentCategory previousCategory|
	self selected ifNil: [ ^ self ].
	
	currentCategory := self candidates getProcessorLinkByCandidateLink: self selected.
	previousCategory := self candidates previousProcessorLinkOf: currentCategory.
	
	selected := previousCategory headLink.
	
	self notifySelectedCandidateChanged.
	
	