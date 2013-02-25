pharo - updates
update20569
	"self new update20569"
	self withUpdateLog: 'Issue 7499:	Write a Pharo20.sources (code changes)
	http://code.google.com/p/pharo/issues/detail?id=7499'.
	self loadTogether: self script544 merge: false.
	self flushCaches.
