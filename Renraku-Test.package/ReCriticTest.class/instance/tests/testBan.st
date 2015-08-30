testBan
	| criticToSkip |
		
	criticToSkip := testClass critics detect: [ :critic |
		critic rule class = RBNoClassCommentRule ].
	
	criticToSkip ban.
	
	self assert: (testClass critics noneSatisfy: [ :critic |
		critic rule class = RBNoClassCommentRule ]).