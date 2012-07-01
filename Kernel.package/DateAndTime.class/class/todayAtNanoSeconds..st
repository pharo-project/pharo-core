squeak protocol
todayAtNanoSeconds: nanoSecondsSinceMidnight

	"This is usually only during system startup..."
	self waitForOffsets.

	^ self basicNew
			setJdn: DaysSinceEpoch 
			seconds: (nanoSecondsSinceMidnight // 1000000000) 
			nano: (nanoSecondsSinceMidnight  \\ 1000000000  ) 
			offset: self localOffset
 