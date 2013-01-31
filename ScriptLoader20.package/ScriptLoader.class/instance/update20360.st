pharo - updates
update20360
	"self new update20360"
	self withUpdateLog: 'Issue 6862:	Configation CLI should not distinguish between symbol and strings as version names
	http://code.google.com/p/pharo/issues/detail?id=6862'.
	self loadTogether: self script342 merge: false.
	self flushCaches.
