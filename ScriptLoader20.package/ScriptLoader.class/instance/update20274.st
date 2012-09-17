pharo - updates
update20274
	"self new update20274"
	self withUpdateLog: 'Issue 6634:	Diff is broken
	http://code.google.com/p/pharo/issues/detail?id=6634'.
	self loadTogether: self script261 merge: false.
	self flushCaches.
