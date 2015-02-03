onCandidateSelected: ann

	self selectedItemBrick: ann candidateBrick.
	self moveTo: self selectedItemBrick.
	self brickRoot changed