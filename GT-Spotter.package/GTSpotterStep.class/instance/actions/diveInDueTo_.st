diveInDueTo: anEventType
	self canDiveInSelectedCandidate ifTrue: [ 
		self spotter
			historize: self selected;
			requestNextStepWith: self selectedCandidate;
			notifyDiveIn: self selectedCandidate for: anEventType ]