testing
testMinusDays
	self assert: (aTimeStamp minusDays: 5) dateAndTime first asString = 
			'12-28-2003' asDate asString.
	self assert: (aTimeStamp minusDays: 5) dateAndTime second asString = 
		 '00:34:56' asTime asString