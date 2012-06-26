pharo - updates
update20085
	"self new update20085"
	self withUpdateLog: 'Issue 5929:	Some Unix shortcuts needs to be fixed
	http://code.google.com/p/pharo/issues/detail?id=5929'.
	self loadTogether: self script74 merge: false.
	self flushCaches.
