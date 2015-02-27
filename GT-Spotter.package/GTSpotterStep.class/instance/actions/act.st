act
	
	self selected ifNil: [ ^ self ].
	self spotter
		historize: self selected;
		notifyActOn: self selectedCandidate.
	self selected processor actOn: self selectedCandidate for: self
