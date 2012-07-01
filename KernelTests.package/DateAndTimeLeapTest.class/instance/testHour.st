testing
testHour
	self assert: aDateAndTime hour =    aDateAndTime hour24.
	self assert: aDateAndTime hour =    13.
	self assert: aDateAndTime hour =    aDateAndTime hours
