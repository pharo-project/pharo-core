input
readFrom: aStream
	"Parse and return a new DateAndTime instance from stream, 
	as a Date, a Time and a TimeZone offset."
	"self readFrom: ' 2013-03-04T23:47:52.876+01:00' readStream"

	| offset date time ch |
	date := Date readFrom: aStream.
	[ aStream peek isDigit ] whileFalse: [ aStream next ].
	time := Time readFrom: aStream.
	offset := self readTimezoneOffsetFrom: aStream.
	^ self
		year: date year
		month: date monthIndex
		day: date dayOfMonth
		hour: time hour
		minute: time minute
		second: time second
		nanoSecond: time nanoSecond
		offset: offset

	"	'-1199-01-05T20:33:14.321-05:00' asDateAndTime
		' 2002-05-16T17:20:45.1+01:01' asDateAndTime

		' 2002-05-16T17:20:45.02+01:01' asDateAndTime

		' 2002-05-16T17:20:45.003+01:01' asDateAndTime

		' 2002-05-16T17:20:45.0004+01:01' asDateAndTime
  		' 2002-05-16T17:20:45.00005' asDateAndTime
		' 2002-05-16T17:20:45.000006+01:01' asDateAndTime

		' 2002-05-16T17:20:45.0000007+01:01' asDateAndTime
		' 2002-05-16T17:20:45.00000008-01:01' asDateAndTime   
		' 2002-05-16T17:20:45.000000009+01:01' asDateAndTime  
		' 2002-05-16T17:20:45.0000000001+01:01' asDateAndTime  

 		' 2002-05-16T17:20' asDateAndTime
		' 2002-05-16T17:20:45' asDateAndTime
		' 2002-05-16T17:20:45+01:57' asDateAndTime
 		' 2002-05-16T17:20:45-02:34' asDateAndTime
 		' 2002-05-16T17:20:45+00:00' asDateAndTime
		' 1997-04-26T01:02:03+01:02:3' asDateAndTime 
 	"