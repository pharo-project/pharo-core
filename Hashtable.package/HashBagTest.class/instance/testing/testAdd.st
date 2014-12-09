testAdd
	bag add: 1.
	bag add: 1.
	
	self assert: ((bag occurrencesOf: 1) = 2)