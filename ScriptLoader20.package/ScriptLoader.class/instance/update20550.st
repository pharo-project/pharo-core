pharo - updates
update20550
	"self new update20550"
	self withUpdateLog: 'Issue 7516:	Failing test: Undeclared
	http://code.google.com/p/pharo/issues/detail?id=7516
	
Issue 7514:	Nautilus cache for last modified classes prevents obsolete classes being GCd
	http://code.google.com/p/pharo/issues/detail?id=7514
	
Issue 7462:	Failing tests RectangleTest
	http://code.google.com/p/pharo/issues/detail?id=7462
	
Issue 7460:	Icons for TestCase in Nautilus, after a clean for production
	http://code.google.com/p/pharo/issues/detail?id=7460'.
	self loadTogether: self script525 merge: false.
	self flushCaches.
