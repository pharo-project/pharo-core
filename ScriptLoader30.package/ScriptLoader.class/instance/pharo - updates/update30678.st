update30678
	"self new update30678"
	self withUpdateLog: '12494 Replace usage of TimeStamp with DateAndTime for methods stamps
	https://pharo.fogbugz.com/f/cases/12494
	
12592 Text Embedded Morphs Broken
	https://pharo.fogbugz.com/f/cases/12592
'.
	self loadTogether: self script331 merge: false.
	self flushCaches.
