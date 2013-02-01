pharo - updates
update20433
	"self new update20433"
	self withUpdateLog: 'Issue 7062:	Package extensions not present in the package
	http://code.google.com/p/pharo/issues/detail?id=7062'.
	self loadTogether: self script412 merge: false.
	self flushCaches.
