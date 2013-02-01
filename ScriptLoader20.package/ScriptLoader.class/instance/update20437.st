pharo - updates
update20437
	"self new update20437"
	self withUpdateLog: 'Issue 7124:	Spec new version
	http://code.google.com/p/pharo/issues/detail?id=7124
	Thanks Benjamin van Ryseghem'.
	self loadTogether: self script416 merge: false.
	self flushCaches.
