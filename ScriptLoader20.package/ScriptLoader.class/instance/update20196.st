pharo - updates
update20196
	"self new update20196"
	self withUpdateLog: 'Issue 6316:	Restore display when launching transcripter via menu
	http://code.google.com/p/pharo/issues/detail?id=6316
	
Issue 6307:	UI inform dialog should use our "growl" stuff
	http://code.google.com/p/pharo/issues/detail?id=6307
	
Issue 6293:	Fix FIleSystemTest >> #testReferenceTo
	http://code.google.com/p/pharo/issues/detail?id=6293'.
	self loadTogether: self script186 merge: false.
	self flushCaches.
