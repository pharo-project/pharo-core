onAllCandidatesAdded: ann
	|categoryMorph|
	ann candidateLinks isEmpty ifTrue: [ ^ self ].
	
	categoryMorph := self categoryMorphOf: ann category.
	categoryMorph
		addAllBricks: (ann candidateLinks collect: [ :each | self buildItemFor: each in: ann category ]).
	categoryMorph
		titleBrick setAmountVisible: (categoryMorph submorphs size) all: self waitingText.
	self changed.