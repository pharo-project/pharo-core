diveInCategory
	| processorLink |
	processorLink := (self candidates getProcessorLinkByCandidateLink: self selected).
	self spotter requestNextStepWith: (processorLink processor allFilteredCandidates collect: [ :each | each asSpotterCandidateLink renderingProcessor: processorLink ])