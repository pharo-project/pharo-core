testCopy
	| copy |
	bag add: 1.
	copy := bag copy.
	
	self assert: ((bag occurrencesOf: 1) = 1).
	self assert: ((copy occurrencesOf: 1) = 1).
	
	copy remove: 1.
	
	self assert: ((bag occurrencesOf: 1) = 1).
	self assert: ((copy occurrencesOf: 1) = 0).