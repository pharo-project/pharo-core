pharo - updates
update20495
	"self new update20495"
	self withUpdateLog: 'Issue 7344:	NewList improvement
	http://code.google.com/p/pharo/issues/detail?id=7344'.
	self loadTogether: self script473 merge: false.
	self flushCaches.
