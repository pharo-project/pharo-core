private
hasEqualTicks: aDateAndTime
	
	^ (jdn = aDateAndTime julianDayNumber)
		and: [ (seconds = aDateAndTime secondsSinceMidnight)
			and: [ nanos = aDateAndTime nanoSecond ] ]

