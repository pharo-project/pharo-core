notifyCandidateSelected: anObject

	self announce: (GTSpotterSelectedCandidateChanged new selected: anObject)