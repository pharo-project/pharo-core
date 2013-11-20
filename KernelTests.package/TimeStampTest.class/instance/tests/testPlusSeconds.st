testPlusSeconds
			
	| dAndt |
	dAndt := aTimeStamp + (60 * 60) seconds.
	self assert: dAndt asDate asString =  '01-02-2004' asDate asString.
	self assert: dAndt asTime asString =  '01:34:56' asTime asString