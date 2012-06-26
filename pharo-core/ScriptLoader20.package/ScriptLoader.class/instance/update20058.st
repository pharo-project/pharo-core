pharo - updates
update20058
	"self new update20058"
	self withUpdateLog: 'Issue 5829:	MessageSet can be removed
	http://code.google.com/p/pharo/issues/detail?id=5829
	
Issue 5828:	New version of Nautilus
	http://code.google.com/p/pharo/issues/detail?id=5828'.
	self loadTogether: self script48 merge: false.
	self flushCaches.
