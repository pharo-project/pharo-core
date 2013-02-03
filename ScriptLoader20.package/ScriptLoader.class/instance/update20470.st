pharo - updates
update20470
	"self new update20470"
	self withUpdateLog: 'Issue 7239:	Nautilus strange display for abstract methods
	http://code.google.com/p/pharo/issues/detail?id=7239'.
	self loadTogether: self script448 merge: false.
	self flushCaches.
