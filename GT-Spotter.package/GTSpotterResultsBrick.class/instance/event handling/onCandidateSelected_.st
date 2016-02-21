onCandidateSelected: ann
	|categoryBrick titleBrick processor|
	processor := ann candidateBrick candidateLink processor.
	categoryBrick := self categoryBrickFor: processor.
	titleBrick := categoryBrick titleBrick.
	self scrollTo: ((ann candidateBrick candidateLink isFirst and: [ titleBrick isFirstInOwner ])
		ifTrue: [ titleBrick ]
		ifFalse: [ ann candidateBrick ])