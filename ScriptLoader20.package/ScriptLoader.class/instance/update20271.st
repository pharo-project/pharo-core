pharo - updates
update20271
	"self new update20271"
	self withUpdateLog: 'Issue 6594:	shortDebugStackOn is TOO short
	http://code.google.com/p/pharo/issues/detail?id=6594'.
	self loadTogether: self script258 merge: false.
	self flushCaches.
