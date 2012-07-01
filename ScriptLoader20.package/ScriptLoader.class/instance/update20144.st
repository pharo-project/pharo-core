pharo - updates
update20144
	"self new update20144"
	self withUpdateLog: 'Issue 6055:	[BUG] New System Progress does not work when headless
	http:Argument expected -> //code.google.com/p/pharo/issues/detail?id=6055
'.
	self loadTogether: self script134 merge: false.
	self flushCaches.
