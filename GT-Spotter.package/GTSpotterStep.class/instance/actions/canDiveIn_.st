canDiveIn: aCandidate
	| newFakeStep |
	newFakeStep := self spotter newStep origin: self origin.
	aCandidate spotterProcessorsFor: newFakeStep.
	^ newFakeStep processors notEmpty