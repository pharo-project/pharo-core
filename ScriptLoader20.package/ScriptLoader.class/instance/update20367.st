pharo - updates
update20367
	"self new update20367"
	self withUpdateLog: 'Issue 6882:	Undeclared removeUnreferencedKeys extremely slow
	http://code.google.com/p/pharo/issues/detail?id=6882'.
	self loadTogether: self script349 merge: false.
	self flushCaches.
