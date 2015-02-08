testLeap

	| dateInLeapYear dateInNonLeapYear |
	dateInLeapYear := january23rd2004.
	dateInNonLeapYear := dateInLeapYear + 365 days.
	self assert: dateInLeapYear leap equals: true.
	self assert: dateInNonLeapYear leap equals: false.


