pharo - updates
update20347
	"self new update20347"
	self withUpdateLog: 'Issue 6829:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=6829'.
	self loadTogether: self script329 merge: false.
	self flushCaches.
