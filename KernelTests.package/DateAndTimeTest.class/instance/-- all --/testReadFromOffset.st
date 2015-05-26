testReadFromOffset
	"self debug: #testReadFromOffset"
	
	self assert: (DateAndTime readFrom: '-1199-01-05T20:33:14.321-05:00' readStream) offset printString =  '-0:05:00:00'.
