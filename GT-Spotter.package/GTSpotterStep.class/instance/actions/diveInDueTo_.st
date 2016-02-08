diveInDueTo: anEventType
	self canDiveInSelectedCandidate ifTrue: [ 
		self spotter
			historize: self selected;
			requestNextStepWith: self selectedCandidate for: #diveIn;
			notifyDiveIn: self selectedCandidate for: anEventType ]