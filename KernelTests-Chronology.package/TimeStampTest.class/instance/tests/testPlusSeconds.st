testPlusSeconds
			
	| dAndt |
	dAndt := (aTimeStamp plusSeconds: 60 * 60) dateAndTime.
	self assert: dAndt first asString =  '01-02-2004' asDate asString.
	self assert: dAndt second asString =  '01:34:56' asTime asString