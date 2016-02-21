onCandidatesAmountChanged: ann
	|categoryMorph|
	
	categoryMorph := self categoryBrickFor: ann category.
	categoryMorph setAmountVisible: (categoryMorph submorphs size) all: ann amount.
	