*Fuel
materializeFrom: aDecoder

	^ self basicNew
		fuelSet: aDecoder nextEncodedInt32
		nanoSecond: aDecoder nextEncodedInt32
		seconds: aDecoder nextEncodedInt32
		offset: (Duration 
			seconds: aDecoder nextEncodedInt32 
			nanoSeconds: aDecoder nextEncodedInt32);
		yourself.