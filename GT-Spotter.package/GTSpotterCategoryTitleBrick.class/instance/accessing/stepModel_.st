stepModel: anObject
	stepModel := anObject.
	
	self stepModel announcer weak
		on: GTSpotterSelectedCandidateChanged send: #onCandidateSelected to: self