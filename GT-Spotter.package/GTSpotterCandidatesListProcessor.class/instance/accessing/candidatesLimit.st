candidatesLimit
	^ candidatesLimit ifNil: [ self defaultCandidatesLimit ]