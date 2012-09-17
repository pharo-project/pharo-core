pharo - updates
update20261
	"self new update20261"
	self withUpdateLog: 'Issue 6587:	FileSystem API Improvement
	http://code.google.com/p/pharo/issues/detail?id=6587
	'.
	self loadTogether: self script248 merge: false.
	self flushCaches.
