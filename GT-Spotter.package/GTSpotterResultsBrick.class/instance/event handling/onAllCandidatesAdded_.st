onAllCandidatesAdded: ann
	|categoryMorph|
	ann candidateLinks ifEmpty: [ ^ self ].
	
	categoryMorph := self categoryBrickFor: ann category.
	categoryMorph
		addAllBricks: (ann candidateLinks collect: [ :each | self buildItemFor: each in: ann category ]);
		setAmountVisible: categoryMorph subbricksCount all: self waitingText.
	self changed