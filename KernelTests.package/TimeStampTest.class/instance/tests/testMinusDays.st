testMinusDays
	self assert: (aTimeStamp - 5 days) asDate asString = '12-28-2003' asDate asString.
	self assert: (aTimeStamp - 5 days) asTime asString = '00:34:56' asTime asString