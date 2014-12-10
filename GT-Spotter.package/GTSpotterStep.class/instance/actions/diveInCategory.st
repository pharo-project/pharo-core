diveInCategory
	| processor |
	self flag: 'this is a little bit better than terrible'.
	processor := (self candidates getProcessorLinkByCandidateLink: self selected) processor.
	self spotter requestNextStepWith: processor allFilteredCandidates