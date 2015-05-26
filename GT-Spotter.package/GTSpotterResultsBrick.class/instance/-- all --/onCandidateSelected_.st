onCandidateSelected: ann
	self flag: 'version from march 20 - solves the empty category problem on diveout, but may have other side-effects'.
	self scrollTo: ann candidateBrick
	"
	|titleBrick|
	titleBrick := (self categoryMorphOf: ann candidateBrick candidateLink processor) subbrickBefore.
	self scrollTo: ((ann candidateBrick candidateLink isFirst and: [ titleBrick isFirstInOwner ])
		ifTrue: [ titleBrick ]
		ifFalse: [ ann candidateBrick ])
	"