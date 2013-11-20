testPlusSecondsOverMidnight
			
	| dAndt |
	dAndt := aTimeStamp + (24 * 60 * 60 + 1) seconds.
	self assert: dAndt asDate asString =  '01-03-2004' asDate asString.
	self assert: dAndt asTime asString =  '00:34:57' asTime asString