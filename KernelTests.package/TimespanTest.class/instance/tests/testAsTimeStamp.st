testAsTimeStamp
	self assert: aTimespan asTimeStamp =  ((TimeStamp readFrom: '1-01-2005 0:00 am' readStream) offset: 0 hours).
