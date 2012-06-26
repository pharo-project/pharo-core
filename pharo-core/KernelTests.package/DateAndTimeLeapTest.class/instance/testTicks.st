testing
testTicks
	self assert: aDateAndTime ticks =  ((DateAndTime julianDayNumber: 2453065) + 48780 seconds) ticks.
	self assert: aDateAndTime ticks =  #(2453065 48780 0)