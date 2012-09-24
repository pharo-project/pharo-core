pharo - updates
update20296
	"self new update20296"
	self withUpdateLog: 'Issue 6693:	Failing test: testRPackageOrganizer
	http://code.google.com/p/pharo/issues/detail?id=6693
	
Issue 6595:	Improve Completion Handling
	http://code.google.com/p/pharo/issues/detail?id=6595'.
	self loadTogether: self script283 merge: false.
	self flushCaches.
