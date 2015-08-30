testBan
	| criticToSkip |
		
	criticToSkip := testClass critics detect: [ :critic |
		critic rule class = RBNoClassCommentRule ].
	
	testClass ban: criticToSkip.
	
	self assert: (testClass critics noneSatisfy: [ :critic |
		critic rule class = RBNoClassCommentRule ]).