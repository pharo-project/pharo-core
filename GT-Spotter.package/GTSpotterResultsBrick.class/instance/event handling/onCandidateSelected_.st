onCandidateSelected: ann

	self scrollTo: (ann candidateBrick candidateLink isFirst
		ifTrue: [ (self categoryMorphOf: ann candidateBrick candidateLink processor) subbrickBefore ]
		ifFalse: [ ann candidateBrick ])