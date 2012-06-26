squeak protocol
todayAtMilliSeconds: milliSecondsSinceMidnight

	"This is usually only during system startup..."
	self waitForOffsets.

	 ^ self basicNew
			setJdn: DaysSinceEpoch 
			seconds: (milliSecondsSinceMidnight // 1000) 
			nano: (milliSecondsSinceMidnight  \\ 1000 * 1000000  ) 
			offset: self localOffset
	 
" 
[ 100000 timesRepeat: [ self fromMilliSeconds: self milliSecondsSinceMidnight. ] ] timeToRun.
"