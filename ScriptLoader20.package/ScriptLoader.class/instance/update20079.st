pharo - updates
update20079
	"self new update20079"
	self withUpdateLog: 'Issue 5924:	SmallInteger>>digitAt: Test
	http://code.google.com/p/pharo/issues/detail?id=5924
	
Issue 5859:	Do we remove SmartRefStream?
	http://code.google.com/p/pharo/issues/detail?id=5859'.
	self loadTogether: self script68 merge: false.
	self flushCaches.
