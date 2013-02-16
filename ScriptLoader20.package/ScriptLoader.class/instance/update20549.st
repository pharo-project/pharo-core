pharo - updates
update20549
	"self new update20549"
	self withUpdateLog: 'Issue 7517:	HDTestRunner: fuel files should not be written for expected failures
	http://code.google.com/p/pharo/issues/detail?id=7517'.
	self loadTogether: self script524 merge: false.
	self flushCaches.
