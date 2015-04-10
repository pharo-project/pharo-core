onCandidateSelected: ann
	|titleBrick|
	titleBrick := (self categoryMorphOf: ann candidateBrick candidateLink processor) subbrickBefore.
	self scrollTo: ((ann candidateBrick candidateLink isFirst and: [ titleBrick isFirstInOwner ])
		ifTrue: [ titleBrick ]
		ifFalse: [ ann candidateBrick ])