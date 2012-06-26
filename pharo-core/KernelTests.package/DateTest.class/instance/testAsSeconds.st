tests
testAsSeconds

	| secondsSinceEpoch |
	secondsSinceEpoch := (january23rd2004 start - '01 January, 1901 00:00:00+00:00' asDateAndTime) asSeconds.
	self useTimeZone: 'EDT' during: [ self assert: january23rd2004 asSeconds equals: secondsSinceEpoch ].
	self useTimeZone: 'PST' during: [ self assert: (Date fromSeconds: secondsSinceEpoch) equals: january23rd2004 ].