testNoClassComment
		
	self assert: (testClass critics anySatisfy: [ :critic |
		critic rule class = RBNoClassCommentRule ]).
	
	testClass comment: 'Now I have a comment'.
	
	self assert: (testClass critics noneSatisfy: [ :critic |
		critic rule class = RBNoClassCommentRule ]).