testMinusSeconds

	| dAndt |
	dAndt := aTimeStamp - (34 * 60 + 56) seconds.
	self assert: dAndt asDate asString =  '01-02-2004' asDate asString.
	self assert: dAndt asTime asString =  '00:00:00' asTime asString