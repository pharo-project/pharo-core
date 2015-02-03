notifySelectedCandidateChanged

	self announcer announce: (GTSpotterSelectedCandidateChanged new selected: self selectedCandidate).
	self spotter announcer announce: (GTSpotterSelectedCandidateChanged new selected: self selectedCandidate).