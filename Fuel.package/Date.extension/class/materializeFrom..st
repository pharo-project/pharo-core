*Fuel
materializeFrom: aDecoder
	^ self 
		starting: (DateAndTime julianDayNumber: aDecoder nextEncodedInt32 offset: ((Duration 
			seconds: aDecoder nextEncodedInt24 
			nanoSeconds: aDecoder nextEncodedInt32)) ) midnight 
		duration: (Duration days: 1)