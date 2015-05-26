onStepAdded
	
	self selectedItemBrick: nil.
	self spotterModel steps last candidates announcer subscribe: GTSpotterAllCandidatesRemoved send: #onAllCandidatesRemoved to: self.