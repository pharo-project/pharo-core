pharo - updates
update20585
	"self new update20585"
	self withUpdateLog: 'Issue 7648:	 Setting Browser > Export Settings writes invalid startup files
	http://code.google.com/p/pharo/issues/detail?id=7648
	
Issue 7645:	testValueWithinTimingRepeat sometimes fails
	http://code.google.com/p/pharo/issues/detail?id=7645
	
Issue 7642:	Time and DateAndTime Parsing fix, cleanup and enhancement
	http://code.google.com/p/pharo/issues/detail?id=7642'.
	self loadTogether: self script559 merge: false.
	self flushCaches.
