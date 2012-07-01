*Fuel
materializeFrom: aDecoder

	^ self 
		seconds: aDecoder nextEncodedInt32
		nanoSeconds: aDecoder nextEncodedInt32