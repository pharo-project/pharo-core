testing
testAsLocal
	self assert: aDateAndTime asLocal =  aDateAndTime.
	self assert: aDateAndTime asLocal = (aDateAndTime utcOffset: aDateAndTime class localOffset)
	
