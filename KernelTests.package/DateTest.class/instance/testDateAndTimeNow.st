tests
testDateAndTimeNow

	"Not a great test: could falsely fail if midnight come in between the two executions and doesnt catch time errors"
	| now |
	now  := self dateClass dateAndTimeNow.
	self 
		assert: now size equals: 2;
		assert: now first equals: self dateClass today;
		assert: (now second isKindOf: Time).
