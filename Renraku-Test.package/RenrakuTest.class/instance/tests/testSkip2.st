testSkip2
	| criticToSkip |
	
		
	criticToSkip := testMethod critics detect: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ].
	
	testClass skip: criticToSkip.
	
	self assert: (testMethod critics noneSatisfy: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ]).