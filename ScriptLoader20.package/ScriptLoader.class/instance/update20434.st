pharo - updates
update20434
	"self new update20434"
	self withUpdateLog: 'Issue 7062:	Package extensions not present in the package
	http://code.google.com/p/pharo/issues/detail?id=7062'.
	self loadTogether: self script413 merge: false.
	self flushCaches.
