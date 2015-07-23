testSkip
	| criticToSkip |
		
	criticToSkip := testClass critics detect: [ :critic |
		critic rule class = RBNoClassCommentRule ].
	
	criticToSkip skip.
	
	self assert: (testClass critics noneSatisfy: [ :critic |
		critic rule class = RBNoClassCommentRule ]).