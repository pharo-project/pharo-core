notifyAmountChanged: anInteger in: aProcessor
	
	self announcer announce: (GTSpotterCandidatesAmountChanged new amount: anInteger; category: aProcessor; yourself)