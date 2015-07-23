testUnusedVar

	testClass superclass
		subclass: testClass name
		instanceVariableNames: 'unused'
		classVariableNames: ''
		category: testClass category.

	self assert: (testClass critics anySatisfy: [ :critic |
		critic rule class = RBOnlyReadOrWrittenVariableRule ]).
	
	testClass superclass
		subclass: testClass name
		instanceVariableNames: ''
		classVariableNames: ''
		category: testClass category.
		
	self assert: (testClass critics noneSatisfy: [ :critic |
		critic rule class = RBOnlyReadOrWrittenVariableRule ]).

