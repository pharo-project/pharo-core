testing
testAsTimeStamp
	self assert: aDateAndTime asTimeStamp =  ((TimeStamp readFrom: '2-29-2004 1:33 pm' readStream) offset: 2 hours).

