testSkip1
	| criticToSkip |
	
		
	criticToSkip := testMethod critics detect: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ].
	
	testMethod skip: criticToSkip.
	
	self assert: (testMethod critics noneSatisfy: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ]).