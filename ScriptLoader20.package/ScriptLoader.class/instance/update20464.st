pharo - updates
update20464
	"self new update20464"
	self withUpdateLog: 'Issue 7200:	DiskStore #isFile: and #isFIle:
	http://code.google.com/p/pharo/issues/detail?id=7200
	
Issue 7188:	Got a red square of death when changing the commit message
	http://code.google.com/p/pharo/issues/detail?id=7188
	
Issue 7171:	Rectangle intersects: ... and if none?
	http://code.google.com/p/pharo/issues/detail?id=7171'.
	self loadTogether: self script442 merge: false.
	self flushCaches.
