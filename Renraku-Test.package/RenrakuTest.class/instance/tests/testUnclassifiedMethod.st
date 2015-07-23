testUnclassifiedMethod

	self assert: (testMethod critics anySatisfy: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ]).
	
	testMethod protocol: 'some protocol'.
	
	self assert: (testMethod critics noneSatisfy: [ :critic |
		critic rule class = RBUnclassifiedMethodsRule ]).