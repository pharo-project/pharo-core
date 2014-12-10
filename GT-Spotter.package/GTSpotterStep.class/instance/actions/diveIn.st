diveIn
	self canDiveInSelectedCandidate ifTrue: [ 
		self spotter requestNextStepWith: self selectedCandidate ]