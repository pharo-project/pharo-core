testPlusDays
	
	| dAndt |
	dAndt := aTimeStamp + 366 days.
	self assert: dAndt asDate asString =  '01-02-2005' asDate asString.
	self assert: dAndt asTime asString =  '00:34:56' asTime asString		
	