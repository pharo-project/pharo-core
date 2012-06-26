testing
testYearMonthDayHourMinuteSecond
	self assert: aDateAndTime =  ((DateAndTime year: 2004 month: 2 day: 29 hour: 13 minute: 33 second: 0) offset: 2 hours).
