pharo - updates
update20136
	"self new update20136"
	self withUpdateLog: '-  Issue 6080:	Fixing classBuilderTest.
	http://code.google.com/p/pharo/issues/detail?id=6080'.
	self loadTogether: self script126 merge: false.
	self flushCaches.
