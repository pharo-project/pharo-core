testSkip
	| criticToSkip |
		
	criticToSkip := testClass critics detect: [ :critic |
		critic rule class = RBNoClassCommentRule ].
	
	testClass skip: criticToSkip.
	
	self assert: (testClass critics noneSatisfy: [ :critic |
		critic rule class = RBNoClassCommentRule ]).