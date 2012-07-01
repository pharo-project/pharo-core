*Fuel
materializeFrom: aDecoder
	^ self 
		starting: (DateAndTime julianDayNumber: aDecoder nextEncodedInt32) midnight 
		duration: (Duration days: 1)