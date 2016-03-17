onCandidateSelected: ann
	|categoryBrick titleBrick processor|

	"fast exit if selected candidate does not exist any more"
	(self band hasSubbrick: ann candidateBrick)
		ifFalse: [ ^ self ].
		
	processor := ann candidateBrick processor.
	categoryBrick := self categoryBrickFor: processor.
	titleBrick := categoryBrick titleBrick.
	self scrollTo: ((ann candidateBrick candidateLink isFirst and: [ titleBrick isFirstInOwner ])
		ifTrue: [ titleBrick ]
		ifFalse: [ ann candidateBrick ])