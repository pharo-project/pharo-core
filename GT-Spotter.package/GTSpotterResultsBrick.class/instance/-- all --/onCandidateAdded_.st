onCandidateAdded: ann
	
	(self categoryMorphOf: ann category)
		addBrickBack: (self buildItemFor: ann candidateLink in: ann category);
		setAmountVisible: ((self categoryMorphOf: ann category) submorphs size) all: self waitingText.
	self changed.