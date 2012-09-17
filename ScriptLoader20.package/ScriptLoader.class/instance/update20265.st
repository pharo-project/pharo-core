pharo - updates
update20265
	"self new update20265"
	self withUpdateLog: 'Issue 6519:	Merge NE and NO Completion
	http://code.google.com/p/pharo/issues/detail?id=6519'.
	self loadTogether: self script252 merge: false.
	self flushCaches.
