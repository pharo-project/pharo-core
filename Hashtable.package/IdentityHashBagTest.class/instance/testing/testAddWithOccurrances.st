testAddWithOccurrances
	| first second |
	first := String newFrom: 'key'.
	second := String newFrom: 'key'.

	bag add: first withOccurrences: 2.
	bag add: second withOccurrences: 3.
	
	self assert: ((bag occurrencesOf: first) = 2)