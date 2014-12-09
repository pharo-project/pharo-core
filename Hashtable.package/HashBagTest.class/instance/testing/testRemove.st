testRemove
	bag add: 1 withOccurrences: 2.
	bag remove: 1.
	
	self assert: ((bag occurrencesOf: 1) = 1).
	
	bag remove: 1.
	self assert: ((bag occurrencesOf: 1) = 0).
	
	self should: [ bag remove: 1 ] raise: Error.
	self assert: ((bag occurrencesOf: 1) = 0).