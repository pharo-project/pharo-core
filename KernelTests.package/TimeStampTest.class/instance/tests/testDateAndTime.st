testDateAndTime
	self assert: aTimeStamp dateAndTime first asString =  '01-02-2004' asDate asString.
	self assert: aTimeStamp dateAndTime second asString =   '00:34:56' asTime asString