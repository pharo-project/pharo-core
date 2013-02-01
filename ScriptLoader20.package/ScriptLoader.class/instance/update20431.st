pharo - updates
update20431
	"self new update20431"
	self withUpdateLog: 'Issue 6509:	KeyChain
	http://code.google.com/p/pharo/issues/detail?id=6509'.
	self loadTogether: self script410 merge: false.
	self flushCaches.
