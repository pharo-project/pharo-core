diveIn
	self canDiveInSelectedCandidate ifTrue: [ 
		self spotter historize: self selected.
		self spotter requestNextStepWith: self selectedCandidate ]