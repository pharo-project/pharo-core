timeStamp: aStream
	"Writes system version and current time on stream aStream."

	| dateTime |
	dateTime := Time dateAndTimeNow.
	aStream
		nextPutAll: 'From ' , self datedVersion , ' [' , self lastUpdateString , '] on ' , (dateTime at: 1) printString;
		nextPutAll: ' at ';
		nextPutAll: (dateTime at: 2) printString