onCandidatesAmountChanged: ann
	|categoryMorph|
	
	ann amount < 1 ifTrue: [ ^ self changed ].
	
	categoryMorph := self categoryMorphOf: ann category.
	categoryMorph ifNil: [ ^ self ].
	
	categoryMorph titleBrick setAmountVisible: (categoryMorph submorphs size) all: ann amount.
	