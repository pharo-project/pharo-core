testAddWithOccurrances
	bag add: 1 withOccurrences: 2.
	
	self assert: ((bag occurrencesOf: 1) = 2)