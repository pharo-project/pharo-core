pharo - updates
update20073
	"self new update20073"
	self withUpdateLog: 'Issue 5887:	Less Sensor hardcoded
	http://code.google.com/p/pharo/issues/detail?id=5887
	
Issue 5839:	TestRunner Run Coverage fails.
	http://code.google.com/p/pharo/issues/detail?id=5839
	
Issue 5876:	StringMorphAttributeScanner>>initializeFromStringMorph:
	http://code.google.com/p/pharo/issues/detail?id=5876'.
	self loadTogether: self script63 merge: false.
	self flushCaches.
