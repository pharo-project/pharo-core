pharo - updates
update20580
	"self new update20580"
	self withUpdateLog: 'Issue 7623:	Progressbar is not showing when it should
	http://code.google.com/p/pharo/issues/detail?id=7623'.
	self loadTogether: self script555 merge: false.
	self flushCaches.
