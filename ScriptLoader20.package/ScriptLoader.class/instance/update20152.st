pharo - updates
update20152
	"self new update20152"
	self withUpdateLog: '- Issue 6105:	Spec version 1.0 Thanks Benjamin van Ryseghem .
	http://code.google.com/p/pharo/issues/detail?id=6105
'.
	self loadTogether: self script142 merge: false.
	self flushCaches.
