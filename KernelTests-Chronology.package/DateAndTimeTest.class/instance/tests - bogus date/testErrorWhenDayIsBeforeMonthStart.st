testErrorWhenDayIsBeforeMonthStart

	self should: [DateAndTime year: 2004 month: 2 day: -1] raise: Error.
 	self should: [DateAndTime year: 2004 month: 2 day: 0] raise: Error.
	self shouldnt: [DateAndTime year: 2004 month: 2 day: 1] raise: Error.
	