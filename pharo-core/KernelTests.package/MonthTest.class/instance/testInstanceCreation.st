Tests
testInstanceCreation
	| m1 m2 |
	m1 := Month starting:  '4 July 1998' asDate.
	m2 := Month month: #July year: 1998.
	self
		assert: month = m1;
		assert: month = m2