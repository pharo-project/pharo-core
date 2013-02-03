pharo - updates
update20479
	"self new update20479"
	self withUpdateLog: 'Issue 6449:	[ENH]: MCHttpRepository Authentication
	http://code.google.com/p/pharo/issues/detail?id=6449'.
	self loadTogether: self script457 merge: false.
	self flushCaches.
