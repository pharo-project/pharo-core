pharo - updates
update20546
	"self new update20546"
	self withUpdateLog: 'Issue 7505:	do #cleanUpForRelease for every build
	http://code.google.com/p/pharo/issues/detail?id=7505'.
	self loadTogether: self script521 merge: false.
	self flushCaches.
