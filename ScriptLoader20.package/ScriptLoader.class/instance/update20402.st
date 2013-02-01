pharo - updates
update20402
	"self new update20402"
	self withUpdateLog: 'Issue 6987:	Command Line command for printing version
	http://code.google.com/p/pharo/issues/detail?id=6987'.
	self loadTogether: self script381 merge: false.
	self flushCaches.
