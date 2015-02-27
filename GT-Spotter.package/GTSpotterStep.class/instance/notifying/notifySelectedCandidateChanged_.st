notifySelectedCandidateChanged: aDoubleLink
	|candidate|
	
	candidate := aDoubleLink ifNotNil: [ :o | o value ].
	self announcer announce: (GTSpotterSelectedCandidateChanged new selected: candidate).
	self spotter notifyCandidateSelected: candidate