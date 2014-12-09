testAdd
	| first second |
	first := String newFrom: 'key'.
	second := String newFrom: 'key'.
	
	bag add: first.
	bag add: first.
	
	bag add: second.
	bag add: second.
	bag add: second.	
	
	self assert: ((bag occurrencesOf: first) = 2).
	self assert: ((bag occurrencesOf: second) = 3)