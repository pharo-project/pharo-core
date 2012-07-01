Tests
testFromSeconds

	| d |
	d := self dateClass fromSeconds: (june2nd1973 - self epoch) asSeconds. 
	self assert: d equals: june2nd1973.
