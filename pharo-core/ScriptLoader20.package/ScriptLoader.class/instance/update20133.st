pharo - updates
update20133
	"self new update20133"
	self withUpdateLog: 'Issue 6066:	New Nautilus version
	http://code.google.com/p/pharo/issues/detail?id=6066
	
Issue 6065:	Improve BasicCodeLoader
	http://code.google.com/p/pharo/issues/detail?id=6065'.
	self loadTogether: self script123 merge: false.
	self flushCaches.
