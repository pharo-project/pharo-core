pharo - updates
update20350
	"self new update20350"
	self withUpdateLog: 'Issue 6810:	CommandLine Rename Image Script
	http://code.google.com/p/pharo/issues/detail?id=6810
	
Issue 6793:	CommandLine Test Runner
	http://code.google.com/p/pharo/issues/detail?id=6793'.
	self loadTogether: self script332 merge: false.
	self flushCaches.
