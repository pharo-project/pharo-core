pharo - updates
update20340
	"self new update20340"
	self withUpdateLog: 'Issue 6806:	More cleanups related to ChangeSorters
	http://code.google.com/p/pharo/issues/detail?id=6806'.
	self loadTogether: self script322 merge: false.
	self flushCaches.
