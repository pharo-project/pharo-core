act
	|processor|
	self selected ifNil: [ ^ self ].
	processor := (self candidates getProcessorLinkByCandidateLink: self selected) processor.
	self spotter historize: self selected.
	processor actOn: self selectedCandidate for: self.
