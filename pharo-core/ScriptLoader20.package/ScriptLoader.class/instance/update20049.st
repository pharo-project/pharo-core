pharo - updates
update20049
	"self new update20049"
	self withUpdateLog: 'Issue 5751:	SUnit-UI Interaction refactor
	http://code.google.com/p/pharo/issues/detail?id=5751
	
Issue 5445:	Broken command-line arguments in 1.4
	http://code.google.com/p/pharo/issues/detail?id=5445'.
	self loadTogether: self script41 merge: false.
	self flushCaches.
