pharo - updates
update20277
	"self new update20277"
	self withUpdateLog: 'Issue 6638:	Gofer merge WorkingCopy not found
	http://code.google.com/p/pharo/issues/detail?id=6638'.
	self loadTogether: self script264 merge: false.
	self flushCaches.
