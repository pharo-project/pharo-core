pharo - updates
update20150
	"self new update20150"
	self withUpdateLog: ' Issue 6113:	jenkins pharo tests for windows
	http://code.google.com/p/pharo/issues/detail?id=6113'.
	self loadTogether: self script140 merge: false.
	self flushCaches.
