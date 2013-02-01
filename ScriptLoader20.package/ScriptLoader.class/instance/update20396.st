pharo - updates
update20396
	"self new update20396"
	self withUpdateLog: 'Issue 6956:	Some Ring tests are dependent on Monticello
	http://code.google.com/p/pharo/issues/detail?id=6956'.
	self loadTogether: self script375 merge: false.
	self flushCaches.
