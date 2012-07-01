pharo - updates
update20132
	"self new update20132"
	self withUpdateLog: 'Issue 6055:	[BUG] New System Progress doesnt work when headless
	http://code.google.com/p/pharo/issues/detail?id=6055'.
	self loadTogether: self script122 merge: false.
	self flushCaches.
