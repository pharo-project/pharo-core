pharo - updates
update20147
	"self new update20147"
	self withUpdateLog: 'Issue 6098:	Cleaning obsolete repositories in Gofer
	http://code.google.com/p/pharo/issues/detail?id=6098'.
	self loadTogether: self script137 merge: false.
	self flushCaches.
