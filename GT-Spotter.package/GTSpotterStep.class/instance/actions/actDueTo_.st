actDueTo: anEventType
	self selected ifNil: [ ^ self ].
	self spotter
		historize: self selected;
		notifyActOn: self selectedCandidate for: anEventType.
	self selected processor actOn: self selectedCandidate for: self
