testBan1
	| criticToSkip |
	
		
	criticToSkip := testMethod critics detect: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ].
	
	testMethod ban: criticToSkip.
	
	self assert: (testMethod critics noneSatisfy: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ]).