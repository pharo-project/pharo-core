testRemove
	| first second |
	first := String newFrom: 'key'.
	second := String newFrom: 'key'.
	
	bag add: first withOccurrences: 2.
	bag add: second withOccurrences: 3.
	bag remove: first.
	
	self assert: ((bag occurrencesOf: first) = 1).
	
	bag remove: first.
	self assert: ((bag occurrencesOf: first) = 0).
	
	self should: [ bag remove: first ] raise: Error.
	self assert: ((bag occurrencesOf: first) = 0).
	self assert: ((bag occurrencesOf: second) = 3).