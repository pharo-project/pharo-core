pharo - updates
update20570
	"self new update20570"
	self withUpdateLog: 'Issue 7593:	fix smartcharacters removal
	http://code.google.com/p/pharo/issues/detail?id=7593'.
	self loadTogether: self script545 merge: false.
	self flushCaches.
