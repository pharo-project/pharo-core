pharo - updates
update20561
	"self new update20561"
	self withUpdateLog: 'Issue 7557:	Nautilus: halt in a test
	http://code.google.com/p/pharo/issues/detail?id=7557
'.
	self loadTogether: self script536 merge: false.
	self flushCaches.
