testing
testOffset
	self assert: aDateAndTime offset =  '0:02:00:00' asDuration.
     self assert: (aDateAndTime offset: '0:12:00:00') =  '2004-02-29T13:33:00+12:00' asDateAndTime