tests
testNewDayMonthYear

	self assert: (Date newDay: 23 month: 1 year: 2004) equals: january23rd2004.	
