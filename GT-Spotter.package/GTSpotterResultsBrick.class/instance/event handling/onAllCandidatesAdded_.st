onAllCandidatesAdded: ann
	|categoryMorph|
	ann candidateLinks isEmpty ifTrue: [ ^ self ].
	
	categoryMorph := self categoryMorphOf: ann category.
	
	ann candidateLinks do: [ :each | categoryMorph addBrickBack: (self buildItemFor: each in: ann category)	].
	
	categoryMorph titleBrick setAmountVisible: (categoryMorph submorphs size) all: self waitingText.

	self doLayout.
	self changed.