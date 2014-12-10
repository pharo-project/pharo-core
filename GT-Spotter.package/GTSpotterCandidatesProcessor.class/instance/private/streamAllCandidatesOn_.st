streamAllCandidatesOn: aStream
	aStream
				addObjects: (self allCandidates first: (self candidatesLimit min: self allCandidates size))
				inProcessor: self.
	^ self allCandidates