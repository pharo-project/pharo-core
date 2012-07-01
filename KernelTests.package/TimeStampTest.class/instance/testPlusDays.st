testing
testPlusDays
	
	| dAndt |
	dAndt := (aTimeStamp plusDays: 366) dateAndTime.
	self assert: dAndt first asString =  '01-02-2005' asDate asString.
	self assert: dAndt second asString =  '00:34:56' asTime asString		
	